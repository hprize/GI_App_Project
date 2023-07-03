//
//  HomeView.swift
//  GI_App_Project
//
//  Created by 이준후 on 2023/05/12.
//

import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject var fetcher: MealDataFetcher
    var body: some View {
        VStack(spacing: 0) {
            HStack(spacing: 0) {
                
                HStack(spacing: 0) {
                    Spacer()
                        .frame(width: 15)
                    Image("GI_ImageLogo_Blue")
                        .resizable()
                        .frame(width: 29, height: 29)
                    
                    Spacer()
                        .frame(width: 15.5)
                    
                    Image("GI_TextLogo_Blue")
                        .resizable()
                        .frame(width: 58, height: 18)
                }
                
                
                Spacer()
                
                NavigationLink {
                    SettingView()
                } label: {
                    Image("set")
                        .resizable()
                        .frame(width: 23, height: 23)
                }
                Spacer()
                    .frame(maxWidth: 11)
                
                NavigationLink {
                    SettingView()
                } label: {
                    Image("alram")
                        .resizable()
                        .frame(width: 23, height: 23)
                }
                Spacer()
                    .frame(width: 16)
            }
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
        HomeView().environmentObject(MealDataFetcher())
    }
}
