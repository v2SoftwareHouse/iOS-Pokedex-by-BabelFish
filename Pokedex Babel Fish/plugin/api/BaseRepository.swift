//
//  BaseRepository.swift
//  Pokedex Babel Fish
//
//  Created by caio sanchez christino on 25/01/23.
//

import Foundation
import Alamofire

open class BaseRepository {
    var baseUrl: String
    
    init(baseUrl: String) {
        self.baseUrl = baseUrl
    }
    
    open func getBodyOrThrow<T>(call: DataRequest) -> T? where T : Decodable {
        let response = call.responseData()
        var result : T? = nil
        
        if let data = response.data {
            do {
                result = try JSONDecoder().decode(T.self, from: data)
            } catch {
                print(error.localizedDescription)
            }
        }
        return result
    }
}

extension DataRequest {
    /**
     Wait for the request to finish then return the response value.
     
     - returns: The response.
     */
    public func response() -> AFDataResponse<Data?> {
        let semaphore = DispatchSemaphore(value: 0)
        var result: AFDataResponse<Data?>!
        
        self.response(queue: DispatchQueue.global(qos: .default)) { response in
            result = response
            semaphore.signal()
        }
        
        _ = semaphore.wait(timeout: DispatchTime.distantFuture)
        return result
    }
    
    /**
     Wait for the request to finish then return the response value.
     
     - parameter responseSerializer: The response serializer responsible for serializing the request, response,
     and data.
     - returns: The response.
     */
    public func response<T: DataResponseSerializerProtocol>(responseSerializer: T) -> AFDataResponse<T.SerializedObject> {
        
        let semaphore = DispatchSemaphore(value: 0)
        var result: AFDataResponse<T.SerializedObject>!
        
        self.response(queue: DispatchQueue.global(qos: .default), responseSerializer: responseSerializer) { response in
            
            result = response
            semaphore.signal()
            
        }
        
        _ = semaphore.wait(timeout: DispatchTime.distantFuture)
        
        return result
    }
    
    
    /**
     Wait for the request to finish then return the response value.
     
     - returns: The response.
     */
    public func responseData() -> AFDataResponse<Data> {
        return response(responseSerializer: DataResponseSerializer())
    }
    
    
    /**
     Wait for the request to finish then return the response value.
     
     - parameter options: The JSON serialization reading options. `.AllowFragments` by default.
     
     - returns: The response.
     */
    public func responseJSON(options: JSONSerialization.ReadingOptions = .allowFragments) -> AFDataResponse<Any> {
        return response(responseSerializer: JSONResponseSerializer(options: options))
    }
}
