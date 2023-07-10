//
//  Home_MealPart.swift
//  GI_App_Project
//
//  Created by 이준후 on 2023/05/12.
//

import SwiftUI

struct Home_MealPart: View {
    @EnvironmentObject var model: MealDataModel
    @State var indexNum: Int = 0
    @State var isAfternoon: Bool = true
    @State var AmBackColor: Color = Color.white
    @State var AmTextColor: Color = Color.white
    @State var PmBackColor: Color = Color.white
    @State var PmTextColor: Color = Color.white
    
    func changeColor() {
        if isAfternoon == false {
            AmBackColor = Color.white
            AmTextColor = Color(hex: 0x707070)
            PmBackColor = Color(hex: 0x5762EA)
            PmTextColor = Color.white
            
        } else {
            AmBackColor = Color(hex: 0x5762EA)
            AmTextColor = Color.white
            PmBackColor = Color.white
            PmTextColor = Color(hex: 0x707070)
        }
    }

    
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
                        .foregroundColor(AmTextColor)
                        .background(AmBackColor)
                        .cornerRadius(6)
                    
                    Spacer()
                        .frame(maxWidth: 60)
                    
                    Text("저녁")
                        .font(.system(size: 18))
                        .fontWeight(.semibold)
                        .frame(width: 115, height: 35)
                        .foregroundColor(PmTextColor)
                        .background(PmBackColor)
                        .cornerRadius(6)
                }
                Spacer()
                    .frame(maxHeight: 15.5)
                HStack(spacing: 0) {
                    VStack(spacing: 11) {
                        HStack(spacing: 0) {
                            Text(model.list.count == 0 ? "      " : model.list[indexNum].lunchMenu1)
                                .font(.system(size: 16))
                                .fontWeight(.medium)
                            Spacer()
                            Image(systemName: "heart")
                                .foregroundColor(Color(hex: 0xB7B7B7))
                        }
                        .redacted(reason: model.list.count == 0 ? .placeholder : [])
                        HStack(spacing: 0) {
                            Text(model.list.count == 0 ? "      " : model.list[indexNum].lunchMenu2)
                                .font(.system(size: 16))
                                .fontWeight(.medium)
                            Spacer()
                            Image(systemName: "heart")
                                .foregroundColor(Color(hex: 0xB7B7B7))
                        }
                        .redacted(reason: model.list.count == 0 ? .placeholder : [])
                        HStack(spacing: 0) {
                            Text(model.list.count == 0 ? "      " : model.list[indexNum].lunchMenu3)
                                .font(.system(size: 16))
                                .fontWeight(.medium)
                            Spacer()
                            Image(systemName: "heart")
                                .foregroundColor(Color(hex: 0xB7B7B7))
                        }
                        .redacted(reason: model.list.count == 0 ? .placeholder : [])
                        HStack(spacing: 0) {
                            Text(model.list.count == 0 ? "      " : model.list[indexNum].lunchMenu4)
                                .font(.system(size: 16))
                                .fontWeight(.medium)
                            Spacer()
                            Image(systemName: "heart")
                                .foregroundColor(Color(hex: 0xB7B7B7))
                        }
                        .redacted(reason: model.list.count == 0 ? .placeholder : [])
                        HStack(spacing: 0) {
                            Text(model.list.count == 0 ? "      " : model.list[indexNum].lunchMenu5)
                                .font(.system(size: 16))
                                .fontWeight(.medium)
                            Spacer()
                            Image(systemName: "heart")
                                .foregroundColor(Color(hex: 0xB7B7B7))
                        }
                        .redacted(reason: model.list.count == 0 ? .placeholder : [])
                    }
                    Divider()
                        .background(Color(hex: 0xB7B7B7))
                        .padding(.horizontal, 17)
                    
                    VStack(spacing: 11) {
                        HStack(spacing: 0) {
                            Text(model.list.count == 0 ? "      " : model.list[indexNum].dinnerMenu1)
                                .font(.system(size: 16))
                                .fontWeight(.medium)
                            Spacer()
                            Image(systemName: "heart")
                                .foregroundColor(Color(hex: 0xB7B7B7))
                        }
                        .redacted(reason: model.list.count == 0 ? .placeholder : [])
                        HStack(spacing: 0) {
                            Text(model.list.count == 0 ? "      " : model.list[indexNum].dinnerMenu2)
                                .font(.system(size: 16))
                                .fontWeight(.medium)
                            Spacer()
                            Image(systemName: "heart")
                                .foregroundColor(Color(hex: 0xB7B7B7))
                        }
                        .redacted(reason: model.list.count == 0 ? .placeholder : [])
                        HStack(spacing: 0) {
                            Text(model.list.count == 0 ? "      " : model.list[indexNum].dinnerMenu3)
                                .font(.system(size: 16))
                                .fontWeight(.medium)
                            Spacer()
                            Image(systemName: "heart")
                                .foregroundColor(Color(hex: 0xB7B7B7))
                        }
                        .redacted(reason: model.list.count == 0 ? .placeholder : [])
                        HStack(spacing: 0) {
                            Text(model.list.count == 0 ? "      " : model.list[indexNum].dinnerMenu4)
                                .font(.system(size: 16))
                                .fontWeight(.medium)
                            Spacer()
                            Image(systemName: "heart")
                                .foregroundColor(Color(hex: 0xB7B7B7))
                        }
                        .redacted(reason: model.list.count == 0 ? .placeholder : [])
                        HStack(spacing: 0) {
                            Text(model.list.count == 0 ? "      " : model.list[indexNum].dinnerMenu5)
                                .font(.system(size: 16))
                                .fontWeight(.medium)
                            Spacer()
                            Image(systemName: "heart")
                                .foregroundColor(Color(hex: 0xB7B7B7))
                        }
                        .redacted(reason: model.list.count == 0 ? .placeholder : [])
                    }
                }
                .frame(maxHeight: 166)
                .padding(.horizontal, 20)
            }
            .frame(width: 364, height: 249)
        }
        .onAppear{
            changeColor()
            indexNum = model.checkCurrentDay()
            isAfternoon = model.checkCurrentTime()
        }
    }
}
//
//struct Home_MealPart_Previews: PreviewProvider {
//    static var previews: some View {
//        Home_MealPart()
//    }
//}
