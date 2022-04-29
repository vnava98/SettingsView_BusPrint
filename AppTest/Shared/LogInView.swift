//
//  LogInView.swift
//  AppTest
//
//  Created by Vladimir N on 4/28/22.
//

import SwiftUI

struct LogInView: View {
    @EnvironmentObject var appState: AppState
    @State var email: String = ""
    var body: some View {
        EmailText()
        TextField(" name@example.com", text: $email)
            .frame(width: 345, height: 40.0)
            .background(Color.white)
            .cornerRadius(5.0)
    }
}

struct LogInView_Previews: PreviewProvider {
    static var previews: some View {
        LogInView()
    }
}
struct EmailText : View {
    var body: some View {
        return Text("Email")
            .foregroundColor(.white)
            .padding(.trailing, 300)
            .offset(x: 0, y: 7)
    }
}
