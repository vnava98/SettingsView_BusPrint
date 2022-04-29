//
//  SettingsView.swift
//  SettingsTesting
//
//  Created by Vladimir N on 4/29/22.
//

import SwiftUI
//import Firebase

// TODO: Change appearance to match overall app design
// TODO: Add functionality to EmailView and PasswordView
struct SettingsView: View {
    // vars for DarkMode and Notifications
    @State var isDarkModeOn: Bool = false
    @State var isNotifyOn: Bool = false
    
        
    var body: some View {
        // NavigationView for the settings page
        NavigationView {
            // Form contains sections for each feature
            Form {
                Section("App") {
                    Toggle(isOn: $isDarkModeOn) {
                        Text("Dark Mode")
                    }
                }
                
                Section("Account") {
                    // Email option
                    NavigationLink(destination: EmailView(), label: {
                        SettingsRowView(title: "Email", systemImageName: "envelope")
                    })
                    
                    // Password option
                    NavigationLink(destination: PasswordView(), label: {
                        SettingsRowView(title: "Password", systemImageName: "ellipsis.rectangle")
                    })
                }
                
                Section("Notifications") {
                    Toggle(isOn: $isNotifyOn) {
                        Text("Enabled")
                    }
                }
                
                Section("About") {
                    HStack {
                        Text("Version")
                        Spacer()
                        Text("v.1.0")
                    }
                }
                
                Button("Sign Out", role: .destructive){
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
            .navigationBarTitle("Settings")
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}

// struct handling the settings row views
// 2 vars: title and systemimage (SF Symbols)
struct SettingsRowView: View {
    var title : String
    var systemImageName : String
    var body : some View {
        HStack (spacing : 15) {
            Image(systemName: systemImageName)
            Text(title)
        }
    }
}
