//
//  Time_number.swift
//  Gi
//
//  Created by Daol on 2023/06/11.
//

import SwiftUI

struct Time_number: View {
    var body: some View {
        VStack  (spacing: 7) {
            HStack (spacing: 18) {
                ZStack {
                    Circle()
                        .frame(width: 30, height: 30)
                        .foregroundColor(Color(hex: 0xF5F5F5))
                    
                    Text("S")
                        .font(.system(size: 15))
                        .fontWeight(.bold)
                        .foregroundColor(Color(hex: 0xFF4F7A))
                }
                ZStack {
                    Circle()
                        .frame(width: 30, height: 30)
                        .foregroundColor(Color(hex: 0xF5F5F5))
                    
                    Text("M")
                        .font(.system(size: 15))
                        .fontWeight(.bold)
                        .foregroundColor(Color(hex: 0x000000))
                }
                ZStack {
                    Circle()
                        .frame(width: 30, height: 30)
                        .foregroundColor(Color(hex: 0xF5F5F5))
                    
                    Text("T")
                        .font(.system(size: 15))
                        .fontWeight(.bold)
                        .foregroundColor(Color(hex: 0x000000))
                }
                ZStack {
                    Circle()
                        .frame(width: 30, height: 30)
                        .foregroundColor(Color(hex: 0xF5F5F5))
                    
                    Text("W")
                        .font(.system(size: 15))
                        .fontWeight(.bold)
                        .foregroundColor(Color(hex: 0x000000))
                }
                ZStack {
                    Circle()
                        .frame(width: 30, height: 30)
                        .foregroundColor(Color(hex: 0xF5F5F5))
                    
                    Text("T")
                        .font(.system(size: 15))
                        .fontWeight(.bold)
                        .foregroundColor(Color(hex: 0x000000))
                }
                ZStack {
                    Circle()
                        .frame(width: 30, height: 30)
                        .foregroundColor(Color(hex: 0xF5F5F5))
                    
                    Text("F")
                        .font(.system(size: 15))
                        .fontWeight(.bold)
                        .foregroundColor(Color(hex: 0x000000))
                }
                ZStack {
                    Circle()
                        .frame(width: 30, height: 30)
                        .foregroundColor(Color(hex: 0xF5F5F5))
                    
                    Text("S")
                        .font(.system(size: 15))
                        .fontWeight(.bold)
                        .foregroundColor(Color(hex: 0x5762EA))
                }
            }
            Spacer()
                .frame(height: 2)
            HStack (spacing: 18) {
                ZStack {
                    Circle()
                        .frame(width: 30, height: 30)
                        .foregroundColor(Color.clear)
                    
                    Text("")
                        .font(.system(size: 15))
                        .fontWeight(.medium)
                        .foregroundColor(Color.clear)
                }
                
                ZStack {
                    Circle()
                        .frame(width: 30, height: 30)
                        .foregroundColor(Color.clear)
                    
                    Text("")
                        .font(.system(size: 15))
                        .fontWeight(.bold)
                        .foregroundColor(Color.clear)
                }
                ZStack {
                    Circle()
                        .frame(width: 30, height: 30)
                        .foregroundColor(Color.clear)
                    
                    Text("")
                        .font(.system(size: 15))
                        .fontWeight(.bold)
                        .foregroundColor(Color.clear)
                }
                ZStack {
                    Circle()
                        .frame(width: 30, height: 30)
                        .foregroundColor(Color.clear)
                    
                    Text("")
                        .font(.system(size: 15))
                        .fontWeight(.bold)
                        .foregroundColor(Color.clear)
                }
                
                VStack(spacing: 2.3) {
                    ZStack {
                        Circle()
                            .frame(width: 30, height: 30)
                            .foregroundColor(Color(hex: 0xFADCB8))
                        
                        Text("1")
                            .font(.system(size: 15))
                            .fontWeight(.medium)
                            .foregroundColor(Color(hex: 0x00000))
                    }
                    
                    HStack(spacing: 2) {
                        Circle()
                            .foregroundColor(Color(hex: 0xFFBF74))
                            .frame(width: 5, height: 5)
                        Circle()
                            .foregroundColor(Color(hex: 0x5762EA))
                            .frame(width: 5, height: 5)
                    }
                }
                
                VStack(spacing: 2.3) {
                    ZStack {
                        Circle()
                            .frame(width: 30, height: 30)
                            .foregroundColor(Color.clear)

                        Text("2")
                            .font(.system(size: 15))
                            .fontWeight(.medium)
                            .foregroundColor(Color(hex: 0x00000))
                    }
                    
                    HStack(spacing: 2) {
                        Circle()
                            .foregroundColor(Color.clear)
                            .frame(width: 5, height: 5)
                        Circle()
                            .foregroundColor(Color.clear)
                            .frame(width: 5, height: 5)
                    }
                }
                
                VStack(spacing: 2.3) {
                    ZStack {
                        Circle()
                            .frame(width: 30, height: 30)
                            .foregroundColor(Color.clear)

                        Text("3")
                            .font(.system(size: 15))
                            .fontWeight(.medium)
                            .foregroundColor(Color(hex: 0x5762EA))
                    }
                    
                    HStack(spacing: 2) {
                        Circle()
                            .foregroundColor(Color.clear)
                            .frame(width: 5, height: 5)
                        Circle()
                            .foregroundColor(Color.clear)
                            .frame(width: 5, height: 5)
                    }
                }
                
                
            }
            HStack (spacing: 18) {
                ZStack {
                    Circle()
                        .frame(width: 30, height: 30)
                        .foregroundColor(Color.clear)
                    
                    Text("4")
                        .font(.system(size: 15))
                        .fontWeight(.medium)
                        .foregroundColor(Color(hex: 0xFF4F7A))
                }
                
                ZStack {
                    Circle()
                        .frame(width: 30, height: 30)
                        .foregroundColor(Color.clear)
                    
                    Text("5")
                        .font(.system(size: 15))
                        .fontWeight(.medium)
                        .foregroundColor(Color(hex: 0x000000))
                }
                ZStack {
                    Circle()
                        .frame(width: 30, height: 30)
                        .foregroundColor(Color.clear)
                    
                    Text("6")
                        .font(.system(size: 15))
                        .fontWeight(.medium)
                        .foregroundColor(Color(hex: 0x000000))
                }
                ZStack {
                    Circle()
                        .frame(width: 30, height: 30)
                        .foregroundColor(Color.clear)
                    
                    Text("7")
                        .font(.system(size: 15))
                        .fontWeight(.medium)
                        .foregroundColor(Color(hex: 0x000000))
                }
                ZStack {
                    Circle()
                        .frame(width: 30, height: 30)
                        .foregroundColor(Color.clear)
                    
                    Text("8")
                        .font(.system(size: 15))
                        .fontWeight(.medium)
                        .foregroundColor(Color(hex: 0x000000))
                }
                ZStack {
                    Circle()
                        .frame(width: 30, height: 30)
                        .foregroundColor(Color.clear)
                    
                    Text("9")
                        .font(.system(size: 15))
                        .fontWeight(.medium)
                        .foregroundColor(Color(hex: 0x000000))
                }
                ZStack {
                    Circle()
                        .frame(width: 30, height: 30)
                        .foregroundColor(Color.clear)
                    
                    Text("10")
                        .font(.system(size: 15))
                        .fontWeight(.medium)
                        .foregroundColor(Color(hex: 0x5762EA))
                }
                
                
                
            }
            HStack (spacing: 18) {
                ZStack {
                    Circle()
                        .frame(width: 30, height: 30)
                        .foregroundColor(Color.clear)
                    
                    Text("11")
                        .font(.system(size: 15))
                        .fontWeight(.medium)
                        .foregroundColor(Color(hex: 0xFF4F7A))
                }
                
                ZStack {
                    Circle()
                        .frame(width: 30, height: 30)
                        .foregroundColor(Color.clear)
                    
                    Text("12")
                        .font(.system(size: 15))
                        .fontWeight(.medium)
                        .foregroundColor(Color(hex: 0x000000))
                }
                ZStack {
                    Circle()
                        .frame(width: 30, height: 30)
                        .foregroundColor(Color.clear)
                    
                    Text("13")
                        .font(.system(size: 15))
                        .fontWeight(.medium)
                        .foregroundColor(Color(hex: 0x000000))
                }
                ZStack {
                    Circle()
                        .frame(width: 30, height: 30)
                        .foregroundColor(Color.clear)
                    
                    Text("14")
                        .font(.system(size: 15))
                        .fontWeight(.medium)
                        .foregroundColor(Color(hex: 0x000000))
                }
                ZStack {
                    Circle()
                        .frame(width: 30, height: 30)
                        .foregroundColor(Color.clear)
                    
                    Text("15")
                        .font(.system(size: 15))
                        .fontWeight(.medium)
                        .foregroundColor(Color(hex: 0x000000))
                }
                ZStack {
                    Circle()
                        .frame(width: 30, height: 30)
                        .foregroundColor(Color.clear)
                    
                    Text("16")
                        .font(.system(size: 15))
                        .fontWeight(.medium)
                        .foregroundColor(Color(hex: 0x000000))
                }
                ZStack {
                    Circle()
                        .frame(width: 30, height: 30)
                        .foregroundColor(Color.clear)
                    
                    Text("17")
                        .font(.system(size: 15))
                        .fontWeight(.medium)
                        .foregroundColor(Color(hex: 0x5762EA))
                }
                
                
                
            }
            HStack (spacing: 18) {
                ZStack {
                    Circle()
                        .frame(width: 30, height: 30)
                        .foregroundColor(Color.clear)
                    
                    Text("18")
                        .font(.system(size: 15))
                        .fontWeight(.medium)
                        .foregroundColor(Color(hex: 0xFF4F7A))
                }
                
                ZStack {
                    Circle()
                        .frame(width: 30, height: 30)
                        .foregroundColor(Color.clear)
                    
                    Text("19")
                        .font(.system(size: 15))
                        .fontWeight(.medium)
                        .foregroundColor(Color(hex: 0x000000))
                }
                ZStack {
                    Circle()
                        .frame(width: 30, height: 30)
                        .foregroundColor(Color.clear)
                    
                    Text("20")
                        .font(.system(size: 15))
                        .fontWeight(.medium)
                        .foregroundColor(Color(hex: 0x000000))
                }
                ZStack {
                    Circle()
                        .frame(width: 30, height: 30)
                        .foregroundColor(Color.clear)
                    
                    Text("21")
                        .font(.system(size: 15))
                        .fontWeight(.medium)
                        .foregroundColor(Color(hex: 0x000000))
                }
                ZStack {
                    Circle()
                        .frame(width: 30, height: 30)
                        .foregroundColor(Color.clear)
                    
                    Text("22")
                        .font(.system(size: 15))
                        .fontWeight(.medium)
                        .foregroundColor(Color(hex: 0x000000))
                }
                ZStack {
                    Circle()
                        .frame(width: 30, height: 30)
                        .foregroundColor(Color.clear)
                    
                    Text("23")
                        .font(.system(size: 15))
                        .fontWeight(.medium)
                        .foregroundColor(Color(hex: 0x000000))
                }
                ZStack {
                    Circle()
                        .frame(width: 30, height: 30)
                        .foregroundColor(Color.clear)
                    
                    Text("24")
                        .font(.system(size: 15))
                        .fontWeight(.medium)
                        .foregroundColor(Color(hex: 0x5762EA))
                }
                
                
                
            }
            HStack (spacing: 18) {
                ZStack {
                    Circle()
                        .frame(width: 30, height: 30)
                        .foregroundColor(Color.clear)
                    
                    Text("25")
                        .font(.system(size: 15))
                        .fontWeight(.medium)
                        .foregroundColor(Color(hex: 0xFF4F7A))
                }
                
                ZStack {
                    Circle()
                        .frame(width: 30, height: 30)
                        .foregroundColor(Color.clear)
                    
                    Text("26")
                        .font(.system(size: 15))
                        .fontWeight(.medium)
                        .foregroundColor(Color(hex: 0x000000))
                }
                ZStack {
                    Circle()
                        .frame(width: 30, height: 30)
                        .foregroundColor(Color.clear)
                    
                    Text("27")
                        .font(.system(size: 15))
                        .fontWeight(.medium)
                        .foregroundColor(Color(hex: 0x000000))
                }
                ZStack {
                    Circle()
                        .frame(width: 30, height: 30)
                        .foregroundColor(Color.clear)
                    
                    Text("28")
                        .font(.system(size: 15))
                        .fontWeight(.medium)
                        .foregroundColor(Color(hex: 0x000000))
                }
                ZStack {
                    Circle()
                        .frame(width: 30, height: 30)
                        .foregroundColor(Color.clear)
                    
                    Text("29")
                        .font(.system(size: 15))
                        .fontWeight(.medium)
                        .foregroundColor(Color(hex: 0x000000))
                }
                ZStack {
                    Circle()
                        .frame(width: 30, height: 30)
                        .foregroundColor(Color.clear)
                    
                    Text("30")
                        .font(.system(size: 15))
                        .fontWeight(.medium)
                        .foregroundColor(Color(hex: 0x000000))
                }
                ZStack {
                    Circle()
                        .frame(width: 30, height: 30)
                        .foregroundColor(Color.clear)
                    
                    Text("")
                        .font(.system(size: 15))
                        .fontWeight(.medium)
                        .foregroundColor(Color(hex: 0x5762EA))
                }
            }
        }
    }
}

struct Time_number_Previews: PreviewProvider {
    static var previews: some View {
        Time_number()
    }
}
