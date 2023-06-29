//
//  ContentView.swift
//  GI_App_Project
//
//  Created by 이준후 on 2023/05/12.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var fetcher = MealDataFetcher()
    @State var selectedTab = ""
    @State var TabSelection = 1
    
    init() {
        UITabBar.appearance().isHidden = true
//        UITabBar.appearance().shadowImage = UIImage()
//        UITabBar.appearance().backgroundImage = UIImage()
//        UITabBar.appearance().isTranslucent = true
    }
    
    var body: some View {
        VStack(spacing: 0) {
            TabView (selection: $TabSelection){
                HomeView()
                    .tag(1)
                TimeView()
                    .tag(2)
                MealView()
                    .tag(3)
                SettingView()
                    .tag(4)
            }
            .environmentObject(fetcher)
            .task {
                do
                {
                    try await fetcher.sendRequest()
                    
                } catch {
                    print(error)
                }
            }
            MainTabBar(TabSelection: $TabSelection, selectedTab: $selectedTab)
        }
        .ignoresSafeArea()
    }
}

extension Color {
    init(hex: UInt, alpha: Double = 1) {
        self.init(
            .sRGB,
            red: Double((hex >> 16) & 0xff) / 255,
            green: Double((hex >> 08) & 0xff) / 255,
            blue: Double((hex >> 00) & 0xff) / 255,
            opacity: alpha
        )
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
