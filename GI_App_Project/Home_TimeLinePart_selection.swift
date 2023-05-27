//
//  Home_TimeLinePart_selection.swift
//  GI_App_Project
//
//  Created by 이준후 on 2023/05/16.
//

import SwiftUI

struct Home_TimeLinePart_selection: View {
    @Binding var tabSelection: Int
    @Namespace private var animationNamespace
    
    let tabItems:  [(String)] = [
        ("혜화랩"),
        ("C 랩"),
        ("M 랩")
    ]
    
    var body: some View {
        ZStack {
            HStack {
                ForEach(0..<3) { index in
                    Button {
                        tabSelection = index + 1
                    } label: {
                        ZStack {
                            Text(tabItems[index])
                                .zIndex(1)
                            
                            if index + 1 == tabSelection {
                                RoundedRectangle(cornerRadius: 12)
                                    .frame(width: 113, height: 35)
                                    .foregroundColor(Color(hex: 0x5762EA))
                                    .matchedGeometryEffect(id: "SelecedTabId", in: animationNamespace)
                            }
                            else {
                                RoundedRectangle(cornerRadius: 12)
                                    .foregroundColor(.clear)
                            }
                        }
                        .foregroundColor(index + 1 == tabSelection ? .white : .gray)
                    }
                    
                }
            }
        }
        .frame(width: 364, height: 35)
        .padding(.horizontal, 20)
    }
}

struct Home_TimeLinePart_selection_Previews: PreviewProvider {
    static var previews: some View {
        Home_TimeLinePart_selection(tabSelection: .constant(1))
    }
}
