//
//  Home_MealPart.swift
//  GI_App_Project
//
//  Created by 이준후 on 2023/05/12.
//

import SwiftUI

struct Home_MealPart: View {
    var body: some View {
        
        VStack {
            HStack {
                Text("점심")
                    .font(.system(size: 18))
                    .fontWeight(.semibold)
                    .frame(width: 115, height: 35)
                    .foregroundColor(Color(hex: 0xffffff))
                    .background(Color(hex: 0x5762EA))
                    .cornerRadius(6)
                    .padding(.horizontal, 30)
                
                Text("저녁")
                    .font(.system(size: 18))
                    .fontWeight(.semibold)
                    .frame(width: 115, height: 35)
                    .foregroundColor(Color(hex: 0x707070))
                    .background(Color(hex: 0xffffff))
                    .cornerRadius(6)
                    .padding(.horizontal, 30)
            }
            HStack {
                VStack {
                    HStack {
                        Text("짬뽕국")
                        Spacer()
                        Image(systemName: "heart")
                    }
                    HStack {
                        Text("잡곡밥")
                        Spacer()
                        Image(systemName: "heart")
                    }
                    HStack {
                        Text("콩나물 무침")
                        Spacer()
                        Image(systemName: "heart")
                    }
                    HStack {
                        Text("새송이 버섯 볶음")
                        Spacer()
                        Image(systemName: "heart")
                    }
                    HStack {
                        Text("돼지갈비")
                        Spacer()
                        Image(systemName: "heart")
                    }
                }
                Divider()
                VStack {
                    HStack {
                        Text("짬뽕국")
                        Spacer()
                        Image(systemName: "heart")
                    }
                    HStack {
                        Text("잡곡밥")
                        Spacer()
                        Image(systemName: "heart")
                    }
                    HStack {
                        Text("콩나물 무침")
                        Spacer()
                        Image(systemName: "heart")
                    }
                    HStack {
                        Text("새송이 버섯 볶음")
                        Spacer()
                        Image(systemName: "heart")
                    }
                    HStack {
                        Text("돼지갈비")
                        Spacer()
                        Image(systemName: "heart")
                    }
                }
            }
            .frame(width: 321, height: 139)
        }
        .frame(width: 364, height: 249)
        .background(Color.white)
        .cornerRadius(9)
        .shadow(radius: 3)
    }
}

struct Home_MealPart_Previews: PreviewProvider {
    static var previews: some View {
        Home_MealPart()
    }
}
