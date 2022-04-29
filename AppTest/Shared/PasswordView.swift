//
//  PasswordView.swift
//  AppTest
//
//  Created by Vladimir N on 4/28/22.
//

import SwiftUI

struct PasswordView: View {
    @EnvironmentObject var appState: AppState
    @State var password: String = ""
    var body: some View {
        Form {
            TextField(" password", text: $password)
                .frame(width: 345, height: 40.0)
                .background(Color.white)
                .cornerRadius(5.0)
            
            Button("Change Password") {
                appState.hasChangedPassword = false
            }
        }
    }
}

struct PasswordView_Previews: PreviewProvider {
    static var previews: some View {
        PasswordView()
    }
}
