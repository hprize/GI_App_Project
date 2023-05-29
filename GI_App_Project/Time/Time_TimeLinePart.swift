//
//  Time_TimeLinePart.swift
//  GI_App_Project
//
//  Created by Daol on 2023/05/29.
//

import SwiftUI

struct Time_TimeLinePart: View {
    var body: some View {
        HStack {
            VStack {
                ZStack {
                    Rectangle()
                        .frame(width: 38, height: 66)
                        .foregroundColor(Color(hex: 0x5762EA))
                        .cornerRadius(14)
                    Text("혜화")
                        .font(.system(size: 14))
                        .foregroundColor(.white)
                }
                HStack {
                    Divider()
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 40)
                ZStack {
                    Rectangle()
                        .frame(width: 38, height: 66)
                        .foregroundColor(Color(hex: 0x5762EA))
                        .cornerRadius(14)
                    Text("혜화")
                        .font(.system(size: 14))
                        .foregroundColor(.white)
                }
                HStack {
                    Divider()
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 12)
                ZStack {
                    Rectangle()
                        .frame(width: 38, height: 66)
                        .foregroundColor(.white)
                        .cornerRadius(14)
                    Text("혜화")
                        .font(.system(size: 14))
                        .foregroundColor(.black)
                }
            }
            .padding(.vertical, 35)
            .padding(.trailing, -20)
            .frame(width: 90)
            
            VStack {
                VStack {
                    HStack {
                        Text("혜화랩 수업")
                        Text("9:30 - 12:30")
                    }
                    .foregroundColor(Color.white)
                    HStack {
                        Text("찾는반 - 수학 / 여는반 - 과학")
                    }
                    .foregroundColor(Color.white)
                }
                .frame(width: 289, height: 103)
                .background(Color(hex: 0xFFBF74))
                .cornerRadius(14)
                
                
                ZStack {
                    VStack {
                        HStack {
                            Text("점심시간")
                            Text("9:30 - 12:30")
                        }
                    }
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(Color.black, lineWidth: 0.5)
                        .frame(width: 278, height: 38)
                }
                
                
                VStack {
                    HStack {
                        Text("혜화랩 수업")
                        Text("9:30 - 12:30")
                    }
                    .foregroundColor(Color.white)
                    HStack {
                        Text("찾는반 - 수학 / 여는반 - 과학")
                    }
                    .foregroundColor(Color.white)
                }
                .frame(width: 289, height: 103)
                .background(Color(hex: 0x5762EA))
                .cornerRadius(14)
            }
            .padding(.vertical, 20)
            .padding(.trailing, 10)
        }
        .frame(width: 364, height: 291)
        .cornerRadius(14)
        .shadow(radius: 3)
    }
}

struct Time_TimeLinePart_Previews: PreviewProvider {
    static var previews: some View {
        Time_TimeLinePart()
    }
}
