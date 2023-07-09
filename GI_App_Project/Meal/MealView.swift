//
//  MealView.swift
//  GI_App_Project
//
//  Created by 이준후 on 2023/05/12.
//

import SwiftUI

struct MealView: View {
    
    @State var like: Bool = false
    
    var body: some View {
        ZStack{
            VStack(spacing: 0) {
                ZStack {
                    Rectangle()
                        .foregroundColor(Color(hex: 0x5762EA))
                        .frame(width: UIScreen.main.bounds.width, height: 204)
                    
                    VStack(spacing: 0) {
                        Spacer()
                        TopNavigationBar(imageLogo: "GI_ImageLogo", TextLogo: "GI_TextLogo", AlarmItem: "NavigationBarBell", SettingItem: "NavigationBarSetting")
                        Spacer()
                            .frame(maxHeight: 32)
                        TopInfoPart()
                        Spacer()
                            .frame(maxHeight: 27)
                    }
                    .frame(height: 204)
                }
                Spacer()
                    .frame(maxHeight: 20)
                BestMenu()
                Spacer()
            }
            VStack{
                Spacer()
                WeekMealCard()
            }
        }
        .ignoresSafeArea()
    }
}

struct MealView_Previews: PreviewProvider {
    static var previews: some View {
        @StateObject var mealDataModel = MealDataModel()
        MealView().environmentObject(mealDataModel)
    }
}
