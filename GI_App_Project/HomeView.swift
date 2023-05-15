//
//  HomeView.swift
//  GI_App_Project
//
//  Created by 이준후 on 2023/05/12.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            Home_NoticePart()
            Home_MealPart()
            Home_TimeLinePart()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
