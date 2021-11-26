//
//  LaunchView.swift
//  Firebase Auth Demo
//
//  Created by Philippe Reichen on 11/26/21.
//

import SwiftUI
import FirebaseAuthUI


struct LaunchView: View {
    
    @State var loggedIn = false
    @State var loginFormShowing = false
    
    var body: some View {
        
        // Check the log in property and show the appopriate view
        if !loggedIn {
        
            
            // Show loooged out view
        Button {
            // Show the login from
            loginFormShowing = true
            
            
        } label: {
            Text("Sign In")
        }
        .sheet(isPresented:$loginFormShowing, onDismiss: checkLogin) {
            LoginForm()
        }
        .onAppear {
            checkLogin()
        }
        }
        else {
            // Show the loggedin view
            
            ContentView(loggedIn: $loggedIn)
        }
    }
    
    func checkLogin() {
        
        loggedIn = FUIAuth.defaultAuthUI()?.auth?.currentUser == nil ? false : true
    }
}

struct LaunchView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchView()
    }
}
