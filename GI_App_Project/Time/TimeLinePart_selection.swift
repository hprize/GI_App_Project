import SwiftUI

struct TimeLinePart_selection: View {
    @Binding var tabSelection: Int
    @Namespace private var animationNamespace
    
    let tabItems: [String] = [
        "혜화 ",
        "C",
        "M"
    ]
    
    var body: some View {
        
        VStack {
            Button(action: {
                tabSelection = 1
            }) {
                ZStack {
                    VStack(spacing: 5) {
                        Text(tabItems[0])
                        Text("lab")
                    }
                        .font(.system(size: 15))
                        .fontWeight(.semibold)
                        .foregroundColor(tabSelection == 1 ? .white : .black)
                        .zIndex(1)
                    
                    if tabSelection == 1 {
                        Rectangle()
                            .frame(width: 38, height: 66)
                            .foregroundColor(Color(hex: 0x5762EA))
                            .cornerRadius(14, corners: [.bottomRight, .topRight])
                            .matchedGeometryEffect(id: "SelecedTabId", in: animationNamespace)
                    } else {
                        Rectangle()
                            .frame(width: 38, height: 66)
                            .foregroundColor(.white)
                            .cornerRadius(14, corners: [.bottomRight, .topRight])
                            .foregroundColor(.clear)
                    }
                }
            }
            Spacer ()
                .frame(height: 0)
            
            VStack {
                Rectangle().frame(width: 1, height: 30)
                    .foregroundColor(Color(hex: 0xB7B7B7))
            }
            Spacer ()
                .frame(height: 0)

            
            Button(action: {
                tabSelection = 2
            }) {
                ZStack {
                    VStack(spacing: 4) {
                        Text(tabItems[1])
                            .font(.system(size: 20))

                        Text("lab")
                            .font(.system(size: 15))

                    }
                        .fontWeight(.semibold)
                        .foregroundColor(tabSelection == 2 ? .white : .black)
                        .zIndex(1)
                    
                    if tabSelection == 2 {
                        Rectangle()
                            .frame(width: 38, height: 66)
                            .foregroundColor(Color(hex: 0x5762EA))
                            .cornerRadius(14, corners: [.bottomRight, .topRight])
                            .matchedGeometryEffect(id: "SelecedTabId", in: animationNamespace)
                    } else {
                        Rectangle()
                            .frame(width: 38, height: 66)
                            .foregroundColor(.white)
                            .cornerRadius(14, corners: [.bottomRight, .topRight])
                            .foregroundColor(.clear)
                    }
                }
            }
            
            Spacer ()
                .frame(height: 0)
            
            VStack {
                Rectangle().frame(width: 1, height: 30)
                    .foregroundColor(Color(hex: 0xB7B7B7))
            }
            Spacer ()
                .frame(height: 0)
            
            Button(action: {
                tabSelection = 3
            }) {
                ZStack {
                    VStack(spacing: 4) {
                        Text(tabItems[2])
                            .font(.system(size: 20))

                        Text("lab")
                            .font(.system(size: 15))

                    }
                        .fontWeight(.semibold)
                        .foregroundColor(tabSelection == 3 ? .white : .black)
                        .zIndex(1)
                    
                    if tabSelection == 3 {
                        Rectangle()
                            .frame(width: 38, height: 66)
                            .foregroundColor(Color(hex: 0x5762EA))
                            .cornerRadius(14, corners: [.bottomRight, .topRight])
                            .matchedGeometryEffect(id: "SelecedTabId", in: animationNamespace)
                    } else {
                       Rectangle()
                            .frame(width: 38, height: 66)
                            .foregroundColor(.white)
                            .cornerRadius(14, corners: [.bottomRight, .topRight])
                            .foregroundColor(.clear)
                    }
                }
            }
        }
        .frame(width: 364, height: 35)
        .padding(.horizontal, 20)
    }
}

struct TimeLinePart_selection_Previews: PreviewProvider {
    static var previews: some View {
        TimeLinePart_selection(tabSelection: .constant(1))
    }
}

