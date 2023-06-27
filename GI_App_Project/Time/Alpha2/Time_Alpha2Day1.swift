//
//  Time_Alpha2Day1.swift
//  Gi
//
//  Created by Daol on 2023/06/23.
//

import SwiftUI

struct Time_Alpha2Day1: View {
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 288, height: 317)
                .cornerRadius(14)
                .foregroundColor(Color.white)
                .shadow(radius: 5)
            
            
            VStack {
                Spacer()
                    .frame(height: 16.5)
                
                VStack (alignment: .center) {
                    Text("06/02")
                        .font(.system(size: 13))
                    
                    Text("Tue")
                        .font(.system(size: 25))
                        .fontWeight(.black)
                        .foregroundColor(Color(hex: 0x5762EA))
                }
                
                Spacer()
                    .frame(height: 9.5)
                VStack {
                    HStack {
                        Text("혜화랩 수업")
                            .font(.system(size: 20))
                            .padding(.trailing, 60)
                        Text("9:30 - 12:30")
                            .font(.system(size: 15))
                        
                    }
                    .foregroundColor(Color.white)
                    
                    Spacer()
                        .frame(height: 10)
                    
                    HStack {
                        Text("찾는반 - 수학 / 여는반 - 과학")
                            .padding(.trailing, 50)
                        
                    }
                    .foregroundColor(Color.white)
                }
                .frame(width: 289, height: 103)
                .background(Color(hex: 0xFFBF74))
                .cornerRadius(6, corners: [.topLeft, .topRight])
                
                Spacer()
                    .frame(height: 0)
                HStack {
                    
                    Spacer()
                        .frame(width:12)
                    Text("점심시간")
                        .font(.system(size: 16))
                    
                    Spacer()
                        .frame(width:105)

                    
                    Text("12:30 - 2:00")
                        .font(.system(size: 15))
                    
                    Spacer()
                        .frame(width:10)
                }
                .frame(width: 289, height: 38)
                
                
                Spacer()
                    .frame(height: 0)
                
                VStack {
                    HStack {
                        Text("오후 프로젝트")
                            .font(.system(size: 20))
                            .padding(.trailing, 45)
                        Text("9:30 - 12:30")
                            .font(.system(size: 15))
                        
                    }
                    .foregroundColor(Color.white)
                    
                    Spacer()
                        .frame(height: 10)
                    
                    HStack {
                        Text("라라, 히치, 단테, 수선 - 체육")
                            .padding(.trailing, 55)
                    }
                    .foregroundColor(Color.white)
                }
                .frame(width: 289, height: 104)
                .background(Color(hex: 0x5762EA))
                .cornerRadius(14, corners: [.bottomLeft, .bottomRight ])
                
            }
            
        }
        .offset(x:15)
            }
}

struct Time_Alpha2Day1_Previews: PreviewProvider {
    static var previews: some View {
        Time_Alpha2Day1()
    }
}
