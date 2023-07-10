//
//  HomeView.swift
//  GI_App_Project
//
//  Created by 이준후 on 2023/05/12.
//

import SwiftUI

struct HomeView: View {
    
    var body: some View {
        VStack(spacing: 0) {
            TopNavigationBar(imageLogo: "GI_ImageLogo_Blue", TextLogo: "GI_TextLogo_Blue", AlarmItem: "NavigationBarBell_Blue", SettingItem: "NavigationBarSetting_Blue")
            Spacer()
                .frame(maxHeight: 36)
            
            // ----------------------------------
            
            ScrollView(.vertical) {
                VStack(spacing: 0) {
                    Text("공지사항")
                        .font(.system(size: 20))
                        .fontWeight(.semibold)
                        .foregroundColor(Color(hex: 0x5762EA))
                        .frame(width: 364, alignment: .leading)
                    Home_NoticePart()
                        .padding(.vertical, 20)
                    Spacer()
                        .frame(height: 20)
                    Text("오늘의 점심")
                        .font(.system(size: 20))
                        .fontWeight(.semibold)
                        .foregroundColor(Color(hex: 0x5762EA))
                        .frame(width: 364, alignment: .leading)
                    
                    Home_MealPart()
                        .padding(.vertical, 20)
                    Spacer()
                        .frame(height: 20)
                    Home_TimeLinePart()
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
