//
//  EmailView.swift
//  AppTest
//
//  Created by Vladimir N on 4/28/22.
//

import SwiftUI

struct EmailView: View {
    @EnvironmentObject var appState: AppState
    // may have to change this in future
    @State var email: String = ""
    var body: some View {
        Form {
            TextField(" name@example.com", text: $email)
                .frame(width: 345, height: 40.0)
                .background(Color.white)
                .cornerRadius(5.0)
            
            Button("Change Email") {
                appState.hasChangedEmail = false
            }
        }
    }
}

struct EmailView_Previews: PreviewProvider {
    static var previews: some View {
        EmailView()
    }
}
