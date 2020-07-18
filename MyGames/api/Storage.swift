//
//  Auth.swift
//  MyGames
//
//  Created by Will Felix on 17/07/20.
//  Copyright © 2020 Douglas Frari. All rights reserved.
//

import Foundation

struct Auth {
    
    private static let key = "user"
    private static let opening_key = "first_time"
    
    static func reset() {
        UserDefaults.standard.setValue(nil, forKey: key)
        UserDefaults.standard.setValue(false, forKey: opening_key)
    }
    
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
