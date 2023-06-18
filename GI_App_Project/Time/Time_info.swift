//
//  Time_info2.swift
//  Gi
//
//  Created by Daol on 2023/06/11.
//

import SwiftUI

struct Time_info: View {
    var body: some View {
        HStack {
            Spacer()
                .frame(width: 3)
            
            Image("gigi")
                .resizable()
                .frame(width: 102, height: 29)
                .padding(.leading, 27)
            
            Spacer()
                .frame(width: 204)
            Button {
                
            } label: {
                Image("set")
            }
            Spacer()
                .frame(width: 11.3)
            
            Button {
                
            } label: {
                Image("alram")
                
                Spacer()
                    .frame(width: 25)
            }
            
        }
        
    }
}

struct Time_info_Previews: PreviewProvider {
    static var previews: some View {
        Time_info()
    }
}
