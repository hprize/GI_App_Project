//
//  Home_NoticePart.swift
//  GI_App_Project
//
//  Created by 이준후 on 2023/05/12.
//

import SwiftUI

struct Home_NoticePart: View {
    var body: some View {
        VStack {
            List {
                HStack {
                    Text("[2023 1모듈 5주차 주간 교육과정운")
                    Text("#운영 #시간표")
                }
                HStack {
                    Text("[2023 1모듈 5주차 주간 교육과정운")
                    Text("#운영 #시간표")
                }

                HStack {
                    Text("[2023 1모듈 5주차 주간 교육과정운")
                    Text("#운영 #시간표")
                }

            }
        }
    }
}

struct NoticePart_Previews: PreviewProvider {
    static var previews: some View {
        Home_NoticePart()
    }
}
