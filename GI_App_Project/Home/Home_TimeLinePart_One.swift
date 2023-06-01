//
//  Home_TimeLinePart_One.swift
//  GI_App_Project
//
//  Created by 이준후 on 2023/05/15.
//

import SwiftUI

struct Home_TimeLinePart_One: View {
    var body: some View {
        VStack {
            HStack {
                VStack {
                    HStack {
                        Circle()
                            .frame(width: 13, height: 13)
                            .foregroundColor(Color(hex: 0x5762EA))
                        Text("09 : 30")
                            .font(.system(size: 14))
                    }
                    HStack {
                        Divider()
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 12)
                    HStack {
                        Circle()
                            .frame(width: 13, height: 13)
                            .foregroundColor(Color(hex: 0x5762EA))
                        Text("09 : 30")
                            .font(.system(size: 14))
                    }
                    HStack {
                        Divider()
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 12)
                    HStack {
                        Circle()
                            .stroke(Color.black, lineWidth: 0.5)
                            .frame(width: 13, height: 13)
                            .foregroundColor(Color.white)
                        Text("09 : 30")
                            .font(.system(size: 14))
                    }
                }
                .padding(.vertical, 35)
                .padding(.trailing, 10)
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
                    .frame(width: 252, height: 83)
                    .background(Color(hex: 0xFFBF74))
                    .cornerRadius(5)
                    
                    Spacer()
                    
                    ZStack {
                        VStack {
                            HStack {
                                Text("점심시간")
                                Text("9:30 - 12:30")
                            }
                        }
                        .frame(width: 252, height: 31)
                        RoundedRectangle(cornerRadius: 5)
                            .stroke(Color.black, lineWidth: 0.5)
                            .frame(width: 252, height: 31)
                        
                    }
                    
                    Spacer()
                    
                    
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
                    .frame(width: 252, height: 83)
                    .background(Color(hex: 0x5762EA))
                    .cornerRadius(5)
                }
                .padding(.vertical, 20)
                .padding(.trailing, 10)
            }
            .frame(width: 364, height: 291)
            .background(Color.white)
            .cornerRadius(9)
            .shadow(radius: 3)
        }
    }
}

struct Home_TimeLinePart_One_Previews: PreviewProvider {
    static var previews: some View {
        Home_TimeLinePart_One()
    }
}
