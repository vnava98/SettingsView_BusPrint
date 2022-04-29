//
//  NotifyView.swift
//  AppTest
//
//  Created by Vladimir N on 4/28/22.
//

import SwiftUI

struct NotifyView: View {
    @EnvironmentObject var appState: AppState
    @State var isNotifyOn: Bool = true
    var body: some View {
        Form {
            Toggle(isOn: $isNotifyOn) {
                Text("Notifications")
            }
            
            // TODO: Add a back button to this page in the top right so that it goes back to the settings page(?)
            Button("Back") {
                appState.hasChangedNotify = false
            }
        }
    }
}

struct NotifyView_Previews: PreviewProvider {
    static var previews: some View {
        NotifyView()
    }
}
