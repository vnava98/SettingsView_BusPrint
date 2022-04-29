//
//  ContentView.swift
//  Shared
//
//  Created by Vladimir N on 4/25/22.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var appState: AppState
    var body: some View {

            TabView {
                HomeView()
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("home")
                    }
                SettingsView()
                    .tabItem {
                        Image(systemName: "gear")
                        Text("Settings")
                    }
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
