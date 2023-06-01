//
//  MainView.swift
//  GI_App_Project
//
//  Created by 이준후 on 2023/05/31.
//

import SwiftUI

struct MainView: View {
    @EnvironmentObject var authViewModel: AuthViewModel
    @State var isSignIn = true

    var body: some View {
        NavigationStack {
            Group {
                switch authViewModel.loginState {
                case .loggedIn:
                    ContentView()
                case .loggedOut:
                    SignInView()
                case .notSigned:
                    SignUpView()
                }
            }
            .navigationTitle(authViewModel.loginState.navigationTitle)
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
            .environmentObject(AuthViewModel())
    }
}
