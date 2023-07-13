//
//  Setting_sub.swift
//  Gi
//
//  Created by Daol on 2023/06/10.
//

import SwiftUI



struct Setting_sub: View {
    
    @State var isDarkModeOn = false
    @State var isalarmOn = false
    @State var isNoticeActive = false // 공지사항 페이지 이동 상태를 나타내는 상태 변수
    
    
    var body: some View {
        //        NavigationView {
        VStack {
            HStack {
                Toggle("다크모드", isOn: $isDarkModeOn)                          // 버튼 스타일 적용
                
                    .tint(Color(hex: 0x5762EA))
                    .font(.system(size: 18))
                
            }
            Spacer()
                .frame(height: 27)
            HStack {
                Toggle("알림 켜고 끄기", isOn: $isalarmOn)
                    .tint(Color(hex: 0x5762EA))
                    .font(.system(size: 18))
                
            }
            
            Spacer()
                .frame(height: 40)
            Divider()
            Spacer()
                .frame(height: 40)
            
            VStack(spacing: 27) {
                
                NavigationLink(destination: Setting_Announce(), isActive: $isNoticeActive) {
         
                    HStack {
                        Text("공지사항")
                            .tint(.primary)
                            .font(.system(size: 18))
                        
                        Spacer()
                        
                        Image(systemName: "chevron.right")
                    }
                    .tint(Color.gray)

                    .onTapGesture {
                        isNoticeActive = true // 공지사항 페이지 이동 상태를 true로 설정하여 페이지 이동 발생
                    }
                    
                }
                .isDetailLink(false)
                
                NavigationLink {
                    
                } label: {
                    
                    HStack {
                        Text("개발자에게 문의")
                            .tint(.primary)
                            .font(.system(size: 18))
                        
                        Spacer()
                        
                        Image(systemName: "chevron.right")
                    }
                    
                    
                    .tint(Color.gray)
                    
                }
            }
            
            Spacer()
                .frame(height: 40)
            Divider()
            
            
            VStack(spacing: 27) {
                Spacer()
                    .frame(height: 20)
                NavigationLink {
                    
                } label: {
                    
                    HStack {
                        Text("버전 1.0")
                            .tint(.primary)
                            .font(.system(size: 18))
                        
                        Spacer()
                        
                    }
                    
                    
                    .tint(Color.gray)
                    
                }
                
                NavigationLink {
                    
                } label: {
                    
                    HStack {
                        Text("개인정보 처리방침")
                            .tint(.primary)
                            .font(.system(size: 18))
                        
                        Spacer()
                        
                    }
                    
                    
                    .tint(Color.gray)
                    
                }
                
                NavigationLink {
                    
                } label: {
                    
                    HStack {
                        Text("탈퇴하기")
                            .tint(Color(hex: 0xFC0505))
                            .font(.system(size: 18))
                            .fontWeight(.semibold)
                        
                        Spacer()
                        
                    }
                    
                    
                    
                }
            }
            
            
        }
        .padding(.horizontal, 36)
        
        
        
    }
    
    
    //    }
}

struct Setting_sub_Previews: PreviewProvider {
    static var previews: some View {
        Setting_sub()
    }
}
