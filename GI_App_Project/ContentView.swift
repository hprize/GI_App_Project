//
//  ContentView.swift
//  GI_App_Project
//
//  Created by 이준후 on 2023/05/12.
//

import SwiftUI

struct ContentView: View {
    @State var selectedTab = ""
    @State var TabSelection = 1
    
    init() {
        UITabBar.appearance().isHidden = true
        UIPageControl.appearance().currentPageIndicatorTintColor = UIColor(hexCode: "5762EA")
        UIPageControl.appearance().pageIndicatorTintColor = UIColor(hexCode: "EDEEF9")
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

extension UIColor {
    
    convenience init(hexCode: String, alpha: CGFloat = 1.0) {
        var hexFormatted: String = hexCode.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines).uppercased()
        
        if hexFormatted.hasPrefix("#") {
            hexFormatted = String(hexFormatted.dropFirst())
        }
        
        assert(hexFormatted.count == 6, "Invalid hex code used.")
        
        var rgbValue: UInt64 = 0
        Scanner(string: hexFormatted).scanHexInt64(&rgbValue)
        
        self.init(red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
                  green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
                  blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
                  alpha: alpha)
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        @StateObject var authViewModel = AuthViewModel()
        @StateObject var mealDataModel = MealDataModel()
        ContentView()
            .environmentObject(authViewModel)
            .environmentObject(mealDataModel)
    }
}
