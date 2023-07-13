//
//  SettingView.swift
//  Gi
//
//  Created by Daol on 2023/06/10.
//

import SwiftUI

struct SettingView: View {
    
    @EnvironmentObject var authViewModel: AuthViewModel

    var body: some View {
        NavigationView {
            VStack {
                
                Setting_Title()
                Spacer()
                    .frame(height:60)
                
                Setting_sub()
                Spacer()
                    .frame(height: 37)
                
                Button {
                    Task {
                        do {
                            try await authViewModel.signOutUser()
                        } catch {
                            print("DEBUG: Failed to sign out \(error.localizedDescription)")
                        }
                    }
                } label: {
                    Text("로그아웃")
                        .fontWeight(.bold)
                        .font(.system(size: 18))
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 135,height: 45)
                        .background(Color(hex: 0x5762EA))
                        .cornerRadius(36)
                }
                Spacer()
                    .frame(height: 55)
            }
            .padding(.bottom,30)
            .padding(.top, 100)
            
        }
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
