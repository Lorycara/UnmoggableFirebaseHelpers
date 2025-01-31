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

public struct GoogleSignInResult {
    public let idToken: String
    public let accessToken: String
    public let email: String?
    public let firstName: String?
    public let lastName: String?
    public let fullName: String?
    public let profileImageUrl: URL?
    
    public var displayName: String? {
        fullName ?? firstName ?? lastName
    }
}
