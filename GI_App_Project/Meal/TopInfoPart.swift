//
//  TopInfoPart.swift
//  GI_App_Project
//
//  Created by 이준후 on 2023/07/06.
//

import SwiftUI

struct TopInfoPart: View {
    @State var indexNum: Int = 0
    @EnvironmentObject var model: MealDataModel
    
    var body: some View {
        HStack(spacing: 0) {
            Spacer()
                .frame(maxWidth: 25)
            Image("cat1")
                .resizable()
                .frame(width: 58, height: 58)
                .clipShape(Circle())
            Spacer()
                .frame(maxWidth: 21)
            VStack (alignment: .leading, spacing:0){
                HStack(spacing: 0) {
                    Text("이준후")
                        .fontWeight(.bold)
                        .font(.system(size: 15))
                        .foregroundColor(.white)
                    Text("님 좋은 점심시간을 보내세요!")
                        .fontWeight(.light)
                        .font(.system(size: 15))
                        .foregroundColor(.white)
                }
                Spacer()
                    .frame(maxHeight: 5)
                
                Text("\(model.list[indexNum].Date[0])월\(model.list[indexNum].Date[1])일 (\(model.list[indexNum].Date[2]))")
                    .fontWeight(.medium)
                    .font(.system(size: 18))
                    .foregroundColor(.white)
            }
            Spacer()
        }
        .onAppear{
            indexNum = model.checkCurrentDay()
        }
    }
}

struct TopInfoPart_Previews: PreviewProvider {
    static var previews: some View {
        TopInfoPart()
    }
}
