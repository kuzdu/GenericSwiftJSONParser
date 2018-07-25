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

    func get<T: Codable> (url: String, parameters: [String: Any]?, headers: [String: String]?, completion: @escaping (_ response: T) -> (), failure: @escaping (_ error: Error?) -> ()) {
       
        Alamofire.request(url, method: .get, parameters: parameters, encoding: URLEncoding.default, headers: headers).responseDecodableObject { (response: DataResponse<T>) in
            if let parsedJson = response.result.value {
                completion(parsedJson)
            } else {
                failure(response.error)
            }
        }
    }
}
