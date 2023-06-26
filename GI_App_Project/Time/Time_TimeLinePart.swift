//
//  Time_TimeLinePart.swift
//  Gi
//
//  Created by Daol on 2023/06/05.
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
                           .cornerRadius(14, corners: [.bottomRight, .topRight])
                          
                    
                    VStack {
                        Text("혜화")
                            .font(.system(size: 15))
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                        Text("Lab")
                            .font(.system(size: 15))
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                    }
                }
                
                
                Spacer()
                    .frame(height: 0)
                
                VStack {
                    Rectangle().frame(width: 1, height: 30)
                        .foregroundColor(Color.gray)
                }
                Spacer()
                    .frame(height: 0)
                
                ZStack {
                    Rectangle()
                        .frame(width: 38, height: 66)
                        .foregroundColor(.white)
                        .cornerRadius(14, corners: [.bottomRight, .topRight ])
                    VStack {
                        Text("C")
                            .font(.system(size: 15))
                            .fontWeight(.semibold)

                        Text("Lab")
                            .font(.system(size: 15))
                            .fontWeight(.semibold)

                    }
                }
                
                
                Spacer()
                    .frame(height: 0)
                VStack {
                    Rectangle().frame(width: 1, height: 30)
                        .foregroundColor(Color.gray)

                }
                
                Spacer()
                    .frame(height: 0)
                
                ZStack {
                    Rectangle()
                        .frame(width: 38, height: 66)
                        .foregroundColor(.white)
                        .cornerRadius(14, corners: [.bottomRight, .topRight ])
                    VStack {
                        Text("M")
                            .font(.system(size: 15))
                            .fontWeight(.semibold)

                        Text("Lab")
                            .font(.system(size: 15))
                            .fontWeight(.semibold)

                    }
                }
                
            }
        }
        .frame(width: 390, height: 291, alignment: .leading)
        .cornerRadius(14)
        
    }
}

struct Time_TimeLinePart_Previews: PreviewProvider {
    static var previews: some View {
        Time_TimeLinePart()
    }
}
