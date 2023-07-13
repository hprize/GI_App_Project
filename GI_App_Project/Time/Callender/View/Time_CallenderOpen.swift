//
//  Time_Callenderopen.swift
//  Gi
//
//  Created by Daol on 2023/06/24.
//

import SwiftUI

struct Time_CallenderOpen: View {
    var body: some View {
        NavigationView {
            VStack {
                
                Spacer()
                    .frame(height: 155)
                Time_info()
                Spacer()
                    .frame(height: 14)
                
                Time_Callender()
                    .padding(.bottom, 0)
                
                HStack {
                    Rectangle().frame(width: 393, height: 1)
                        .foregroundColor(Color(hex: 0xB7B7B7))
                }
                .padding(.top, -10)
                
                ZStack {
                    Rectangle()
                        .foregroundColor(Color(hex: 0xFCFCFC))
                    
                    VStack() {
                        Spacer()
                            .frame(height: 38)
                        
                        Text("1 - Thursday")
                            .font(.system(size: 22))
                            .fontWeight(.bold)
                            .foregroundColor(Color(hex: 0x343434))
                            .padding(.trailing, 212)
                        
                        Time_Timeline()
                    }
                    
                    Button {
                        
                    } label: {
              
                        ZStack {
                            Circle()
                                .frame(width: 43, height: 43)
                                .foregroundColor(Color(hex: 0x5762EA))
                                .shadow(color: Color.black.opacity(0.2), radius: 6, x: 0, y: 3)

                            Image("plus")
                            
                        }
                    }
                    .padding(.leading, 300)
                    .padding(.top, 100)
                }
                
            }
            
        }
    }
}

struct Time_CallenderOpen_Previews: PreviewProvider {
    static var previews: some View {
        Time_CallenderOpen()
    }
}
