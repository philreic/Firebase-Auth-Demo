//
//  ContentView.swift
//  Firebase Auth Demo
//
//  Created by Philippe Reichen on 11/26/21.
//

import SwiftUI
import FirebaseAuthUI

struct ContentView: View {
    
    @Binding var loggedIn: Bool
    
    var body: some View {
        
        VStack {
        Text("Welcome!")
            
            Button {
                try! FUIAuth.defaultAuthUI()?.signOut()
                loggedIn = false
            } label: {
                Text("Sign Out")
            }

    }
    }
}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
