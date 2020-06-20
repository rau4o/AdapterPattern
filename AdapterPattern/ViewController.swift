//
//  ViewController.swift
//  AdapterPattern
//
//  Created by rau4o on 6/20/20.
//  Copyright © 2020 rau4o. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var googleAuthService: AuthServiceProtocol = AuthAdapter()
    var twitterAuthService: AuthServiceProtocol = TwitterAuthAdapter()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        loginUser(email: "User@gmail.com", password: "123")
    }

    func loginUser(email: String, password: String) {
        googleAuthService.login(email: email, password: password, success: { (user, token) in
            print(user.email.description)
            print(token.token)
        }) { (error) in
            if let error = error {
                print(error.localizedDescription)
            }
        }
    }

}

