//
//  Auth.swift
//  MyGames
//
//  Created by Will Felix on 17/07/20.
//  Copyright © 2020 Douglas Frari. All rights reserved.
//

import Foundation

struct Constants {
    
    static let OPENED_APP_BEFORE_KEY = "first_time"
    
    static let USER_KEY = "user"
    
    static let TODO_KEY = "todo"
    
}

struct Auth {
    
    private static let key = Constants.USER_KEY
    private static let opening_key = Constants.OPENED_APP_BEFORE_KEY
    
    static func username() -> String? {
        return UserDefaults.standard.string(forKey: key)
    }
    
    static func isFirstTime() -> Bool {
        return !UserDefaults.standard.bool(forKey: opening_key)
    }
    
    static func registerOpening() {
        UserDefaults.standard.setValue(true, forKey: opening_key)
    }
    
    
    static func signin(name: String) {
        UserDefaults.standard.setValue(name, forKey: key)
    }

    static func isSignedIn() -> Bool {
        let user = UserDefaults.standard.string(forKey: key)
        return user != nil && !user!.isEmpty
    }

    static func signout() {
        UserDefaults.standard.setValue(nil, forKey: key)
    }

}
