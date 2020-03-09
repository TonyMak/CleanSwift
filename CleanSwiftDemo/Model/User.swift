//
//  User.swift
//  CleanSwiftDemo
//
//  Created by Tony Mak on 06/03/2020.
//  Copyright © 2020 Tony Mak. All rights reserved.
//

import Foundation

struct User: Codable, Equatable {
    let id: Int
    let memberNo: String
    let firstName: String
    let lastName : String
    let email: String
    let phone: String
    let address: String
}
