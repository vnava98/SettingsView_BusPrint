//
//  SettingsView.swift
//  AppTest
//
//  Created by Vladimir N on 4/28/22.
//

import SwiftUI
//import Firebase

struct SettingsView: View {
    @State var isDarkModeOn: Bool = false
    // handles the app state
    @EnvironmentObject var appState: AppState
    var body: some View {
        NavigationView {
            
            Form{
                
                Section(header: Text("App")) {
                    // TODO: Implement darkmode feature for
                    // status: WIP
                    Toggle(isOn: $isDarkModeOn){
                        Text("Dark Mode")
                    }
                    
                }
                
                Section(header: Text("Privacy")){
                    // TODO: Implement privacy policy for app
                    // status: WIP
                    Text("Privacy Policy")
                }
                
                Section(header: Text("Account")){
                    Button("Email") {
                        //EmailView
                        appState.hasChangedEmail = true
                    }
                    Button("Password") {
                        // PasswordView
                        appState.hasChangedPassword = true
                    }
                    Button("Notifications") {
                        //NotifyView
                        appState.hasChangedNotify = true
                    }
                }
                
                
                Button("Sign Out", role: .destructive) {
                    
                    // sign out user from firebase using code example from firebase below
                    /*
                     let firebaseAuth = Auth.auth()
                     do {
                     try firebaseAuth.signOut()
                     } catch let signOutError as NSError {
                     print ("Error signout %@" , signOutError)
                     }
                     */
                    appState.hasSignedOut = true //change state to true once user has signed out
                    
                }
            }
            .navigationTitle("Settings")
        }
    }
    
}
    
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
