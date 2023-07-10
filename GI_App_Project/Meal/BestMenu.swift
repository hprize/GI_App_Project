//
//  BestMenu1.swift
//  GI_App_Project
//
//  Created by 이준후 on 2023/07/06.
//

import SwiftUI

struct BestMenu: View {
    
    var body: some View {
        VStack(spacing: 0) {
            HStack(spacing: 0) {
                Text("오늘의 BEST 메뉴")
                    .foregroundColor(Color(hex: 0xFFBF74))
                    .font(.system(size: 20))
                Spacer()
            }
            Spacer()
                .frame(maxHeight: 17)
            
            HStack(alignment: .bottom, spacing: 0) {
                ZStack {
                    Rectangle()
                        .frame(width: 69, height: 71)
                        .cornerRadius(10)
                        .shadow(color: Color.black.opacity(0.16), radius: 6)
                        .foregroundColor(.white)
                    
                    Text("브로콜리 두부무침")
                        .font(.system(size: 15))
                        .fontWeight(.medium)
                        .frame(width: 60, height: 40)
                        .minimumScaleFactor(0.01)
                        .lineLimit(3)
                        .multilineTextAlignment(.center)
                    
                    ZStack {
                        Circle()
                            .frame(width: 28, height: 28)
                            .foregroundColor(Color(hex: 0x5762EA))
                        
                        Text("2")
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                    }
                    .padding(.trailing, 60)
                    .padding(.bottom, 60)
                }
                
                Spacer()
                    .frame(maxWidth: 23)
                
                VStack{
                    ZStack {
                        Rectangle()
                            .frame(width: 69, height: 71)
                            .cornerRadius(10)
                            .shadow(color: Color.black.opacity(0.16), radius: 6)
                            .foregroundColor(.white)
                        
                        Text("김치찌개")
                            .font(.system(size: 15))
                            .fontWeight(.medium)
                            .frame(width: 60, height: 40)
                            .minimumScaleFactor(0.01)
                            .lineLimit(3)
                            .multilineTextAlignment(.center)
                        
                        ZStack {
                            Circle()
                                .frame(width: 28, height: 28)
                                .foregroundColor(Color(hex: 0x5762EA))
                            
                            Text("1")
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                            
                            
                        }
                        .padding(.trailing, 60)
                        .padding(.bottom, 60)
                    }
                    Spacer()
                        .frame(maxHeight: 33)
                }
                
                Spacer()
                    .frame(maxWidth: 23)
                
                ZStack {
                    Rectangle()
                        .frame(width: 69, height: 71)
                        .cornerRadius(10)
                        .shadow(color: Color.black.opacity(0.16), radius: 6)
                        .foregroundColor(.white)
                    
                    Text("탕수육볶음")
                        .font(.system(size: 15))
                        .fontWeight(.medium)
                        .frame(width: 60, height: 40)
                        .minimumScaleFactor(0.01)
                        .lineLimit(3)
                        .multilineTextAlignment(.center)
                    
                    ZStack {
                        Circle()
                            .frame(width: 28, height: 28)
                            .foregroundColor(Color(hex: 0x5762EA))
                        
                        Text("3")
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                    }
                    .padding(.trailing, 60)
                    .padding(.bottom, 60)
                }
            }
        }
        .padding(.horizontal, 25)
        
    }
}


struct BestMenu1_Previews: PreviewProvider {
    static var previews: some View {
        BestMenu()
    }
}

