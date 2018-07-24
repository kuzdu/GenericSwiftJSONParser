//
//  HTTP.swift
//  GenericJSONParser
//
//  Created by Michael Rothkegel on 24.07.18.
//  Copyright © 2018 Michael Rothkegel. All rights reserved.
//

import Foundation
import CodableAlamofire
import Alamofire

class HTTP {

    static func get<T: Codable> (url: String, parameters: [String: Any], headers: [String: String]?, completion: @escaping (_ response: T) -> (), failure: @escaping (_ error: Error?) -> ()) {
        /*Alamofire.request(url, method: .get, parameters: nil, encoding: .default, headers: nil).responseDecodableObject { (response: DataResponse<T>) in
            if let parsedJson = response.result.value {
                completion(parsedJson)
            } else {
                failure(response.error)
            }
        }*/
        
        Alamofire.request(url).responseDecodableObject { (response: DataResponse<T>) in
            if let parsedJson = response.result.value {
                completion(parsedJson)
            } else {
                failure(response.error)
            }
        }
    }
}
