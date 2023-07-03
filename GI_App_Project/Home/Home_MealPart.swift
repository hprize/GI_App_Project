//
//  Home_MealPart.swift
//  GI_App_Project
//
//  Created by 이준후 on 2023/05/12.
//

import SwiftUI

struct Home_MealPart: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 9)
                .frame(width: 364, height: 249)
                .foregroundColor(Color.white)
                .shadow(color: Color.black.opacity(0.15), radius: 6)
            VStack(spacing: 0) {
                HStack(spacing: 0) {
                    Text("점심")
                        .font(.system(size: 18))
                        .fontWeight(.semibold)
                        .frame(width: 115, height: 35)
                        .foregroundColor(Color(hex: 0xffffff))
                        .background(Color(hex: 0x5762EA))
                        .cornerRadius(6)
                    
                    Spacer()
                        .frame(maxWidth: 60)
                    
                    Text("저녁")
                        .font(.system(size: 18))
                        .fontWeight(.semibold)
                        .frame(width: 115, height: 35)
                        .foregroundColor(Color(hex: 0x707070))
                        .background(Color(hex: 0xffffff))
                        .cornerRadius(6)
                }
                Spacer()
                    .frame(maxHeight: 15.5)
                HStack(spacing: 0) {
                    VStack(spacing: 11) {
                        HStack(spacing: 0) {
                            Text("짬뽕국")
                                .font(.system(size: 16))
                                .fontWeight(.medium)
                            Spacer()
                            Image(systemName: "heart")
                                .foregroundColor(Color(hex: 0xB7B7B7))
                        }
                        HStack(spacing: 0) {
                            Text("잡곡밥")
                                .font(.system(size: 16))
                                .fontWeight(.medium)
                            Spacer()
                            Image(systemName: "heart")
                                .foregroundColor(Color(hex: 0xB7B7B7))
                        }
                        HStack(spacing: 0) {
                            Text("콩나물 무침")
                                .font(.system(size: 16))
                                .fontWeight(.medium)
                            Spacer()
                            Image(systemName: "heart")
                                .foregroundColor(Color(hex: 0xB7B7B7))
                        }
                        HStack(spacing: 0) {
                            Text("새송이 버섯 볶음")
                                .font(.system(size: 16))
                                .fontWeight(.medium)
                            Spacer()
                            Image(systemName: "heart")
                                .foregroundColor(Color(hex: 0xB7B7B7))
                        }
                        HStack(spacing: 0) {
                            Text("돼지갈비")
                                .font(.system(size: 16))
                                .fontWeight(.medium)
                            Spacer()
                            Image(systemName: "heart")
                                .foregroundColor(Color(hex: 0xB7B7B7))
                        }
                    }
                    Divider()
                        .background(Color(hex: 0xB7B7B7))
                        .padding(.horizontal, 17)
                    VStack(spacing: 11) {
                        HStack(spacing: 0) {
                            Text("짬뽕국")
                                .font(.system(size: 16))
                                .fontWeight(.medium)
                            Spacer()
                            Image(systemName: "heart")
                                .foregroundColor(Color(hex: 0xB7B7B7))
                        }
                        HStack(spacing: 0) {
                            Text("잡곡밥")
                                .font(.system(size: 16))
                                .fontWeight(.medium)
                            Spacer()
                            Image(systemName: "heart")
                                .foregroundColor(Color(hex: 0xB7B7B7))
                        }
                        HStack(spacing: 0) {
                            Text("콩나물 무침")
                                .font(.system(size: 16))
                                .fontWeight(.medium)
                            Spacer()
                            Image(systemName: "heart")
                                .foregroundColor(Color(hex: 0xB7B7B7))
                        }
                        HStack(spacing: 0) {
                            Text("새송이 버섯 볶음")
                                .font(.system(size: 16))
                                .fontWeight(.medium)
                            Spacer()
                            Image(systemName: "heart")
                                .foregroundColor(Color(hex: 0xB7B7B7))
                        }
                        HStack(spacing: 0) {
                            Text("돼지갈비")
                                .font(.system(size: 16))
                                .fontWeight(.medium)
                            Spacer()
                            Image(systemName: "heart")
                                .foregroundColor(Color(hex: 0xB7B7B7))
                        }
                    }
                }
                .frame(maxHeight: 166)
                .padding(.horizontal, 20)
            }
            .frame(width: 364, height: 249)
        }
    }
}

struct Home_MealPart_Previews: PreviewProvider {
    static var previews: some View {
        Home_MealPart()
    }
}
