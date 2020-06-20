//
//  AuthService.swift
//  AdapterPattern
//
//  Created by rau4o on 6/20/20.
//  Copyright © 2020 rau4o. All rights reserved.
//

import Foundation

public struct User {
    var email: String
    var password: String
}

public struct Token {
    var token: String
}

public protocol AuthServiceProtocol{
    func login(email: String, password: String, success: @escaping (User, Token) -> Void, failure: @escaping (Error?) -> Void)
}
