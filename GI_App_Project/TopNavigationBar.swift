//
//  TopNavigationBar.swift
//  GI_App_Project
//
//  Created by 이준후 on 2023/07/06.
//

import SwiftUI

struct TopNavigationBar: View {
    @State var imageLogo: String
    @State var TextLogo: String
    @State var AlarmItem: String
    @State var SettingItem: String
    
    var body: some View {
        HStack(spacing: 0) {
            
            HStack(spacing: 0) {
                Spacer()
                    .frame(width: 15)
                Image(imageLogo)
                    .resizable()
                    .frame(width: 29, height: 29)
                
                Spacer()
                    .frame(width: 15.5)
                
                Image(TextLogo)
                    .resizable()
                    .frame(width: 58, height: 18)
            }
            
            
            Spacer()
            
            NavigationLink {
                SettingView()
            } label: {
                Image(SettingItem)
                    .resizable()
                    .frame(width: 23, height: 23)
            }
            Spacer()
                .frame(maxWidth: 11)
            
            NavigationLink {
                SettingView()
            } label: {
                Image(AlarmItem)
                    .resizable()
                    .frame(width: 23, height: 23)
            }
            Spacer()
                .frame(width: 16)
        }
    }
}

struct TopNavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        TopNavigationBar(imageLogo: "GI_ImageLogo_Blue", TextLogo: "GI_TextLogo_Blue", AlarmItem: "NavigationBarBell_Blue", SettingItem: "NavigationBarSetting_Blue")
    }
}
