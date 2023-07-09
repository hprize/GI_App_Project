//
//  WeekMealCard.swift
//  GI_App_Project
//
//  Created by 이준후 on 2023/07/07.
//

import SwiftUI

struct WeekMealCard: View {
    @EnvironmentObject var model: MealDataModel
    @State var selection: Int = 0
    
    var body: some View {
        VStack(spacing: 0) {
            TabView(selection: $selection) {
                ForEach(0...4, id: \.self) { num in
                    MealCard(cardIndexNum: num)
                        .tag(num)
                }
                .padding(.top, 100)
            }
            .frame(height: 500)
            .tabViewStyle(.page(indexDisplayMode: .always))
        }
        .ignoresSafeArea()
        .onAppear() {
            selection = model.checkCurrentDay()
        }
    }
}

struct WeekMealCard_Previews: PreviewProvider {
    static var previews: some View {
        @StateObject var mealDataModel = MealDataModel()
        WeekMealCard().environmentObject(mealDataModel)
    }
}
