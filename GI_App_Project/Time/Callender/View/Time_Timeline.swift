//
//  Time_Timeleine.swift
//  Gi
//
//  Created by Daol on 2023/06/25.
//

import SwiftUI

struct Time_Timeline: View {
    var body: some View {
        HStack {
            ZStack {
                VStack {
                    Rectangle().frame(width: 1, height: 400)
                        .foregroundColor(Color(hex: 0xB7B7B7))
                }
                .padding(.trailing, 186)
                
                VStack {
                    
                    HStack {
                        Circle()
                            .frame(width: 10, height: 10)
                            .foregroundColor(Color(hex: 0xFFBF74))
                        
                        VStack(alignment: .leading, spacing: 6) {
                            
                            Spacer()
                                .frame(height: 16)
                            Text("학생총회")
                                .font(.system(size: 17))
                                .fontWeight(.semibold)
                                .foregroundColor(Color(hex: 0x343434))
                            
                            Text("오후 2시 - 5시, 4층공간 모두 사용")
                                .font(.system(size: 13))
                                .fontWeight(.light)
                                .foregroundColor(Color(hex: 0x343434))
                            
                        }
                    }
                    Spacer()
                        .frame(height: 20)
                    
                    HStack {
                        Circle()
                            .frame(width: 10, height: 10)
                            .foregroundColor(Color(hex: 0x5762EA))
                        
                        VStack(alignment: .leading, spacing: 6) {
                            
                            Spacer()
                                .frame(height: 16)
                            Text("중간 피드백")
                                .font(.system(size: 17))
                                .fontWeight(.semibold)
                                .foregroundColor(Color(hex: 0x343434))
                            
                            Text("오후 2시 - 5시, 4층공간 모두 사용")
                                .font(.system(size: 13))
                                .fontWeight(.light)
                                .foregroundColor(Color(hex: 0x343434))
                            
                        }
                    }
                    
                    Spacer()
                        .frame(height: 20)
                    
                    HStack {
                        Spacer()
                            .frame(width: 25)
                        Circle()
                            .frame(width: 10, height: 10)
                            .foregroundColor(Color(hex: 0xFFBF74))
                        
                        VStack(alignment: .leading, spacing: 6) {
                            
                            Spacer()
                                .frame(height: 16)
                            Text("다른 일정이 존재하지 않습니다")
                                .font(.system(size: 17))
                                .fontWeight(.semibold)
                                .foregroundColor(Color(hex: 0xFFBF74))
                            
                            Text("오후 2시 - 5시, 4층공간 모두 사용")
                                .font(.system(size: 13))
                                .fontWeight(.light)
                                .foregroundColor(Color.clear)
                            
                        }
                    }
                    
                    Spacer()
                        .frame(height: 230)
                    
                }
                
            }
            Spacer()
                .frame(width: 140)
        }
        
    }
}

struct Time_Timeline_Previews: PreviewProvider {
    static var previews: some View {
        Time_Timeline()
    }
}
