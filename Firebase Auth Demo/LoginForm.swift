//
//  LoginForm.swift
//  Firebase Auth Demo
//
//  Created by Philippe Reichen on 11/26/21.
//

import Foundation
import SwiftUI
import FirebaseAuthUI
import FirebaseEmailAuthUI

struct LoginForm: UIViewControllerRepresentable {
    
    func makeUIViewController(context: Context) -> UINavigationController {
        let authUI = FUIAuth.defaultAuthUI()
        
        guard authUI != nil else {
            return UINavigationController()
        }
        
        let providers = [FUIEmailAuth()]
        authUI?.providers = providers
        
        return authUI!.authViewController()
    }
    
    func updateUIViewController(_ uiViewController: UINavigationController, context: Context) {
        
    }
}
