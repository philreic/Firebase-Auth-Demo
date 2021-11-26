//
//  Firebase_Auth_DemoApp.swift
//  Firebase Auth Demo
//
//  Created by Philippe Reichen on 11/26/21.
//

import SwiftUI
import Firebase

@main
struct Firebase_Auth_DemoApp: App {
    
    init() {
        
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            LaunchView()
        }
    }
}
