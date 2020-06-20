//
//  AuthAdapter.swift
//  AdapterPattern
//
//  Created by rau4o on 6/20/20.
//  Copyright © 2020 rau4o. All rights reserved.
//

import Foundation

class AuthAdapter: AuthServiceProtocol {
    
    private var auth = GoogleAuth()
    
    public func login(email: String, password: String, success: @escaping (User, Token) -> Void, failure: @escaping (Error?) -> Void) {
        auth.login(email: email, password: password) { (user, error) in
            guard let user = user else {
                failure(error)
                return
            }
            let userModel = User(email: email, password: password)
            let token = Token(token: user.token)
            success(userModel, token)
        }
    }
}
