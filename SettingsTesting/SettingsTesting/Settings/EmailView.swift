//
//  EmailView.swift
//  SettingsTesting
//
//  Created by Vladimir N on 4/29/22.
//

import SwiftUI

struct EmailView: View {
    @State var currentEmail = "name@example.com"
    @State var newEmail: String = ""
    var body: some View {
        Form {
            Section("Email") {
                Text(currentEmail)
                TextField("New Email", text: $newEmail)
                
            }
            
            
            // sign the user out of firebase
            /*
             let firebaseAuth = Auth.auth()
             do {
             try firebaseAuth.signOut()
             } catch let signOutError as NSError {
             print("Error signing out: %@", signOutError)
             */
            
        }
    }
}

struct EmailView_Previews: PreviewProvider {
    static var previews: some View {
        EmailView()
    }
}
