//
//  MainTabBar.swift
//  GI_App_Project
//
//  Created by 이준후 on 2023/06/27.
//

import SwiftUI

struct MainTabBar: View {
    @Binding var TabSelection: Int
    @Binding var selectedTab : String
    
    var body: some View {
        HStack(spacing: 0) {
            
            TabBarButton(TabSelection: $TabSelection, image: "TabBarLogoHouse", clickSelection: 1, text: "홈", selectedTab: $selectedTab )
            
            TabBarButton(TabSelection: $TabSelection, image: "TabBarLogoClock", clickSelection: 2, text: "시간표", selectedTab: $selectedTab )
            
            TabBarButton(TabSelection: $TabSelection, image: "TabBarLogoPerson", clickSelection: 3, text: "급식", selectedTab: $selectedTab )
            
            TabBarButton(TabSelection: $TabSelection, image: "TabBarLogoSetting", clickSelection: 4, text: "설정", selectedTab: $selectedTab )
        }
        .padding()
        .background(Color.white)
        .cornerRadius(9)
        .shadow(color: Color.black.opacity(0.15), radius: 6)
    }
}

//struct MainTabBar_Previews: PreviewProvider {
//    static var previews: some View {
//        MainTabBar()
//    }
//}


struct TabBarButton: View {
    @Binding var TabSelection: Int
    var image : String = ""
    var clickSelection : Int
    var text : String
    @Binding var selectedTab: String
    
    var body: some View {
        
        GeometryReader { reader in
            Button(action: {
                TabSelection = clickSelection
                withAnimation{
                    selectedTab = image
                }
                
            }, label: {
                VStack(spacing: 0) {
                    Image("\(image)\(TabSelection == clickSelection ? "-fill" : "")")
                    Spacer()
                        .frame(maxHeight: 12)
                    if TabSelection == clickSelection {
                        Text(text)
                            .font(.system(size: 12, weight: .light))
                            .foregroundColor(Color(hex: 0x5762EA))
                    } else {
                        Text(text)
                            .font(.system(size: 12, weight: .light))
                            .foregroundColor(Color(hex: 0xC7CAED))
                    }
                    Spacer()
                        .frame(maxHeight: 38)
                }
            })
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        .frame(height: 69)
    }
}
