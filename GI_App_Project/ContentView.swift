//
//  ContentView.swift
//  GI_App_Project
//
//  Created by 이준후 on 2023/05/12.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var fetcher = MealDataFetcher()
    @State private var selection = 0
    var body: some View {
        TabView (selection: $selection){
                HomeView()
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("홈")
                    } .tag(0)
                TimeView()
                    .tabItem {
                        Image(systemName: "clock.fill")
                        Text("시간표")
                    } .tag(1)
                MealView()
                    .tabItem {
                        Image(systemName: "person.fill")
                        Text("급식")
                    } .tag(2)
                SignOutView()
                    .tabItem {
                        Image(systemName: "gearshape.fill")
                        Text("설정")
                    } .tag(3)
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
