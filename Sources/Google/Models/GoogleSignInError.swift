//
//  GoogleSignInError.swift
//  FirebaseBootcamp2
//
//  Created by Lorenzo Cara on 31/01/25.
//
import SwiftUI
public enum GoogleSignInError: LocalizedError {
        case noViewController
        case badResponse
        
        var errorDescription: String? {
            switch self {
            case .noViewController:
                return "Could not find top view controller."
            case .badResponse:
                return "Google Sign In had a bad response."
            }
        }
    }
