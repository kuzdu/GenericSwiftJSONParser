//
//  User.swift
//  GenericJSONParser
//
//  Created by Michael Rothkegel on 24.07.18.
//  Copyright © 2018 Michael Rothkegel. All rights reserved.
//

import Foundation

struct User : Codable {
    let id: Int?
    let first_name: String?
    let last_name: String?
    let avatar: String?
}
