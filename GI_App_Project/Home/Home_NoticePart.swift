//
//  Home_NoticePart.swift
//  GI_App_Project
//
//  Created by 이준후 on 2023/05/12.
//

import SwiftUI

struct Home_NoticePart: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 9)
                .frame(width: 364, height: 148)
                .foregroundColor(Color.white)
                .shadow(color: Color.black.opacity(0.15), radius: 6)
            VStack(spacing: 15) {
                HStack(spacing: 0) {
                    Text("[2023 1모듈 5주차 주간 교육과정운영관련어쩌고저쩌고")
                        .lineLimit(1)
                        .font(.system(size: 15))
                        .fontWeight(.medium)
                    Spacer()
                    Text("#운영 #시간표")
                        .font(.system(size: 14))
                        .fontWeight(.light)
                        .foregroundColor(Color(hex: 0x707070))
                }
                .padding(.horizontal, 16)
                Divider()
                    .padding(.horizontal, 30)
                HStack(spacing: 0) {
                    Text("[2023 1모듈 5주차 주간 교육과정운영관련어쩌고저쩌고")
                        .lineLimit(1)
                        .font(.system(size: 15))
                        .fontWeight(.medium)
                    Spacer()
                    Text("#운영 #시간표")
                        .font(.system(size: 14))
                        .fontWeight(.light)
                        .foregroundColor(Color(hex: 0x707070))
                }
                .padding(.horizontal, 16)
                Divider()
                    .padding(.horizontal, 30)
                HStack(spacing: 0) {
                    Text("[2023 1모듈 5주차 주간 교육과정운영관련어쩌고저쩌고")
                        .lineLimit(1)
                        .font(.system(size: 15))
                        .fontWeight(.medium)
                    Spacer()
                    Text("#운영 #시간표")
                        .font(.system(size: 14))
                        .fontWeight(.light)
                        .foregroundColor(Color(hex: 0x707070))
                }
                .padding(.horizontal, 16)
            }
            .padding(.vertical, 17)
        }
        .frame(maxWidth: 364, maxHeight: 148)
    }
}

struct NoticePart_Previews: PreviewProvider {
    static var previews: some View {
        Home_NoticePart()
    }
}
