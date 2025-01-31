//
//  GoogleSignInResult.swift
//  FirebaseBootcamp2
//
//  Created by Lorenzo Cara on 31/01/25.
//


import Foundation
import SwiftUI
import UIKit

@preconcurrency import GoogleSignIn

public extension GoogleSignInResult {
   
    
    init?(result: GIDSignInResult) {
        guard let idToken = result.user.idToken?.tokenString else {
            return nil
        }
        
        self.idToken = idToken
        self.accessToken = result.user.accessToken.tokenString
        self.email = result.user.profile?.email
        self.firstName = result.user.profile?.givenName
        self.lastName = result.user.profile?.familyName
        self.fullName = result.user.profile?.name
                
        if result.user.profile?.hasImage == true {
            self.profileImageUrl = result.user.profile?.imageURL(withDimension: UInt(400))
        } else {
            self.profileImageUrl = nil
        }
    }
}
