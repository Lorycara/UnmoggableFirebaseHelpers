//
//  SignInWithGoogleHelper.swift
//  UnmoggableFirebaseHelpers
//
//  Created by Lorenzo Cara on 31/01/25.
//


import Foundation
import SwiftUI
import UIKit
import GoogleSignIn

public final class SignInWithGoogleHelper {
    
    public init(GIDClientID: String) {
        let config = GIDConfiguration(clientID: GIDClientID)
        GIDSignIn.sharedInstance.configuration = config
    }
    
    public init(){}
        
    @MainActor
    public func resultForSignIn(viewController: UIViewController? = nil) async throws -> GoogleSignInResult {
        guard let topViewController = viewController ?? UIApplication.topViewController() else {
            throw GoogleSignInError.noViewController
        }
                
        let gidSignInResult = try await GIDSignIn.sharedInstance.signIn(withPresenting: topViewController)
        
        guard let result = GoogleSignInResult(result: gidSignInResult) else {
            throw GoogleSignInError.badResponse
        }
        
        return result
    }
}
