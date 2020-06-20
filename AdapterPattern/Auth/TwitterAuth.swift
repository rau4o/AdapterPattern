//
//  TwitterAuth.swift
//  AdapterPattern
//
//  Created by rau4o on 6/20/20.
//  Copyright © 2020 rau4o. All rights reserved.
//

import Foundation

public struct TwitterUser {
    var email: String
    var password: String
    var token: String
}

public class TwitterAuth {
    public func login(email: String, password: String, completion: @escaping(TwitterUser?, Error?) -> Void) {
        let token = "special token"
        let user = TwitterUser(email: email, password: password, token: token)
        completion(user, nil)
    }
}
