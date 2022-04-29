//
//  AppTestApp.swift
//  Shared
//
//  Created by Vladimir N on 4/25/22.
//

import SwiftUI


// Observable Object that handles the appstate of the settings page
// The vars all handle the current state of their repsective buttons
class AppState: ObservableObject {
    // has the user signed out
    @Published var hasSignedOut: Bool
    // has the user changed their email
    @Published var hasChangedEmail: Bool
    // has the user changed their password
    @Published var hasChangedPassword: Bool
    // has the user changed whether they want notifcations
    @Published var hasChangedNotify: Bool
    
    init(hasSignedOut: Bool, hasChangedEmail: Bool, hasChangedPassword: Bool, hasChangedNotify: Bool) {
        self.hasSignedOut = hasSignedOut
        self.hasChangedEmail = hasChangedEmail
        self.hasChangedPassword = hasChangedPassword
        self.hasChangedNotify = hasChangedNotify
    }
    
    
    /*
    init(hasSignedOut: Bool) {
        self.hasSignedOut = hasSignedOut
    }
*/

}

@main
struct AppTestApp: App {
    
    @ObservedObject var appState = AppState(hasSignedOut: false, hasChangedEmail: false, hasChangedPassword: false, hasChangedNotify: false)
     
    //@ObservedObject var appState = AppState(hasSignedOut: false)
    var body: some Scene {
        WindowGroup {
            // appState keeps track of the settings app current state
            // TODO: Change to a switch case
            // if the user hasSignedOut send them to the LoginView
            if appState.hasSignedOut {
                LogInView().environmentObject(appState)
            }
            
            // if the user hasChangedEmail then send them to email view
            else if appState.hasChangedEmail {
                EmailView()
                    .environmentObject(appState)
            }
            // if the user hasChangedPassword then send them to PasswordView
            else if appState.hasChangedPassword {
                PasswordView()
                    .environmentObject(appState)
            }
            // if the user hasChangedNotify then send them to NotifyView
            else if appState.hasChangedNotify {
                NotifyView()
                    .environmentObject(appState)
            }
            // otherwise if the user hasNotChanged anything then stay on the content view
            else {
                ContentView()
                    .environmentObject(appState)
            }

            // the default state of the app should be in the LoginView if the user !isLoggedIn
            // if the user isLoggedIn then the default view should be the HomeView
        }
    }
}
