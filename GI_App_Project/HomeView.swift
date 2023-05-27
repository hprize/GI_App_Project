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
        ScrollView (.vertical){
            VStack {
                Text(fetcher.menuData.results[0].properties.menu1.richText[0].plainText)
                    .font(.system(size: 20))
                    .fontWeight(.semibold)
                    .foregroundColor(Color(hex: 0x5762EA))
                    .frame(width: 364, alignment: .leading)
                Home_NoticePart()
                    .padding(.vertical, 20)
                Text("오늘의 점심")
                    .font(.system(size: 20))
                    .fontWeight(.semibold)
                    .foregroundColor(Color(hex: 0x5762EA))
                    .frame(width: 364, alignment: .leading)
                    
                Home_MealPart()
                    .padding(.vertical, 20)
                Home_TimeLinePart()
            }
            .frame(width: 393)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView().environmentObject(MealDataFetcher())
    }
}
