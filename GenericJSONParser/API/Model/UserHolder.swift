//
//  User.swift
//  GenericJSONParser
//
//  Created by Michael Rothkegel on 24.07.18.
//  Copyright © 2018 Michael Rothkegel. All rights reserved.
//

import Foundation


struct UserHolder : Codable {
    let page: Int?
    let per_page: Int?
    let total: Int?
    let total_pages: Int?
    let data: [User]
}
