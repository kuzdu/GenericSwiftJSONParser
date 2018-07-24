//
//  APIService.swift
//  GenericJSONParser
//
//  Created by Michael Rothkegel on 24.07.18.
//  Copyright © 2018 Michael Rothkegel. All rights reserved.
//

import Foundation


class APIService {
    
    private init() { }
    
    static let instance = APIService()
    
    private let baseUrl = "https://reqres.in/api"
    private let users = "/users?page=2"
    
    func getUser(page: Int? = nil, completion: @escaping (_ userHolder: UserHolder) -> (), failure: @escaping (_ error: Error?) -> ()) {
       
        
        var parameters = [String: Any]()
        if page != nil {
            parameters["page"] = page
        }
        
        HTTP.get(url: baseUrl + users, parameters: parameters, headers: [:], completion: { (userHolder: UserHolder) in
            completion(userHolder)
        }) { (error) in
            failure(error)
        }
    }
    
}
