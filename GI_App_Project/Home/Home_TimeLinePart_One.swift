//
//  Home_TimeLinePart_One.swift
//  GI_App_Project
//
//  Created by 이준후 on 2023/05/15.
//

import SwiftUI

struct Home_TimeLinePart_One: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 9)
                .frame(width: 364, height: 291)
                .foregroundColor(Color.white)
                .shadow(color: Color.black.opacity(0.15), radius: 6)
            VStack(spacing: 0) {
                HStack(spacing: 0) {
                    
                    // -----------------------------
                    HStack(spacing: 0) {
                        VStack(spacing: 0) {
                            Circle()
                                .frame(width: 13, height: 13)
                                .foregroundColor(Color(hex: 0x5762EA))
                            HStack(spacing: 0) {
                                Divider()
                            }
                            .padding(.vertical, 8)
                            Circle()
                                .frame(width: 13, height: 13)
                                .foregroundColor(Color(hex: 0x5762EA))
                            HStack(spacing: 0) {
                                Divider()
                            }
                            .padding(.vertical, 8)
                            Circle()
                                .stroke(Color.black, lineWidth: 0.5)
                                .frame(width: 13, height: 13)
                                .foregroundColor(Color.white)
                        }
                        .padding(.vertical, 34)
                        
                        Spacer()
                            .frame(maxWidth: 10)
                        
                        VStack {
                            Text("09 : 30")
                                .font(.system(size: 14))
                                .fontWeight(.medium)
                                .foregroundColor(Color(hex: 0x707070))
                            Spacer()
                            Text("12 : 30")
                                .font(.system(size: 14))
                                .fontWeight(.medium)
                                .foregroundColor(Color(hex: 0x707070))
                            Spacer()
                            Text("02 : 00")
                                .font(.system(size: 14))
                                .fontWeight(.medium)
                                .foregroundColor(Color(hex: 0x707070))
                        }
                        .padding(.vertical, 32)
                    }
                    
                    // ----------------------- 왼쪽 타임라인 표시
                    
                    Spacer()
                        .frame(maxWidth: 14)
                    
                    VStack(spacing: 0) {
                        ZStack {
                            RoundedRectangle(cornerRadius: 5)
                                .foregroundColor(Color(hex: 0xFFBF74))
                                .frame(width: 252, height: 83)
                            VStack(alignment: .leading, spacing: 0) {
                                HStack(spacing: 0) {
                                    Text("혜화랩 수업")
                                        .font(.system(size: 16))
                                        .fontWeight(.medium)
                                    Spacer()
                                    Text("9:30 - 12:30")
                                        .font(.system(size: 12))
                                        .fontWeight(.regular)
                                }
                                .padding(.horizontal, 21)
                                .foregroundColor(Color.white)
                                Spacer()
                                    .frame(maxHeight: 14)
                                HStack(spacing: 0) {
                                    Text("찾는반 - 수학 / 여는반 - 과학")
                                        .font(.system(size: 15))
                                        .fontWeight(.light)
                                }
                                .padding(.horizontal, 21)
                                .foregroundColor(Color.white)
                            }
                            .frame(width: 252)
                        }
                        
                        Spacer()
                        
                        ZStack {
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(Color(hex: 0x707070), lineWidth: 0.5)
                                .frame(width: 252, height: 31)
                            VStack(spacing: 0) {
                                HStack(spacing: 0) {
                                    Text("점심시간")
                                        .font(.system(size: 16))
                                        .fontWeight(.medium)
                                    Spacer()
                                    Text("12:30 - 2:00")
                                        .font(.system(size: 12))
                                        .fontWeight(.regular)
                                }
                                .padding(.horizontal, 21)
                            }
                            .frame(width: 252, height: 31)
                            
                        }
                        
                        Spacer()
                        
                        
                        ZStack {
                            RoundedRectangle(cornerRadius: 5)
                                .foregroundColor(Color(hex: 0x5762EA))
                                .frame(width: 252, height: 83)
                            VStack(alignment: .leading, spacing: 0) {
                                HStack(spacing: 0) {
                                    Text("프로젝트 / 체육")
                                        .font(.system(size: 16))
                                        .fontWeight(.medium)
                                    Spacer()
                                    Text("2:00 - 5:00")
                                        .font(.system(size: 12))
                                        .fontWeight(.regular)
                                }
                                .padding(.horizontal, 21)
                                .foregroundColor(Color.white)
                                Spacer()
                                    .frame(maxHeight: 14)
                                HStack(spacing: 0) {
                                    Text("라라, 히치, 단테, 수선 - 체육")
                                        .font(.system(size: 15))
                                        .fontWeight(.light)
                                }
                                .padding(.horizontal, 21)
                                .foregroundColor(Color.white)
                            }
                            .frame(width: 252)
                        }
                    }
                    .padding(.vertical, 24)
                }
                .frame(width: 364, height: 291)
            }
        }
    }
}

struct Home_TimeLinePart_One_Previews: PreviewProvider {
    static var previews: some View {
        Home_TimeLinePart_One()
    }
}
