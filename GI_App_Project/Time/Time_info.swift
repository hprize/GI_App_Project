//
//  Time_info2.swift
//  Gi
//
//  Created by Daol on 2023/06/11.
//

import SwiftUI

struct Time_info: View {
    
    @State private var isSettingViewActive = false
    
    var body: some View {
        
        
        HStack {
            
            HStack(spacing: 15) {
                Image("GI_ImageLogo_Blue")
                    .resizable()
                    .frame(width: 29, height: 29)
                
                Image("GI_TextLogo_Blue")
                    .resizable()
                    .frame(width: 58, height: 18)
            }
            .padding(.leading, 27)

            
            Spacer()
                .frame(width: 204)
            
            NavigationLink {
                SettingView()
            } label: {
                Image("set")
                    .resizable()
                    .frame(width: 23, height: 23)
            }
            Spacer()
                .frame(width: 11.3)

            NavigationLink {
                SettingView()
            } label: {
                Image("alram")
                    .resizable()
                    .frame(width: 22, height: 23)
            }
            Spacer()
                .frame(width: 22)
        }

    }
}

struct Time_info_Previews: PreviewProvider {
    static var previews: some View {
        Time_info()
    }
}

