//
//  MealCard.swift
//  GI_App_Project
//
//  Created by 이준후 on 2023/07/07.
//

import SwiftUI

struct CardFrontDinner : View {
    
    @EnvironmentObject var model: MealDataModel
    let width : CGFloat
    let height : CGFloat
    @Binding var degree : Double
    
    @Binding var cardIndexNum : Int

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 9)
                .fill(Color(hex: 0x5762EA))
                .frame(width: width, height: height)
                .shadow(color: .black.opacity(0.16), radius: 9)
            VStack(spacing: 0) {
                Spacer()
                    .frame(maxHeight: 11)
                
                ZStack{
                    RoundedRectangle(cornerRadius: 6)
                        .foregroundColor(Color.white)
                        .frame(width: 105, height: 35)
                    
                    Text("저녁")
                        .fontWeight(.semibold)
                        .font(.system(size: 18))
                        .foregroundColor(Color(hex: 0x5762EA))
                }
                
                Spacer()
                    .frame(maxHeight: 11)
                
                Text("\(model.list[cardIndexNum].Date[0])월\(model.list[cardIndexNum].Date[1])일 (\(model.list[cardIndexNum].Date[2]))")
                    .fontWeight(.regular)
                    .font(.system(size: 17))
                    .foregroundColor(Color.white)
                
                Spacer()
                
                VStack(spacing: 13) {
                    HStack{
                        Text(model.list.count == 0 ? "      " : model.list[cardIndexNum].dinnerMenu1)
                        Spacer()
                        Image("HeartItemWhite")
                    }
                    .padding(.horizontal, 61)
                    
                    HStack{
                        Text(model.list.count == 0 ? "      " : model.list[cardIndexNum].dinnerMenu2)
                        Spacer()
                        Image("HeartItemWhite")
                    }
                    .padding(.horizontal, 61)
                    
                    HStack{
                        Text(model.list.count == 0 ? "      " : model.list[cardIndexNum].dinnerMenu3)
                        Spacer()
                        Image("HeartItemWhite")
                    }
                    .padding(.horizontal, 61)
                    
                    HStack{
                        Text(model.list.count == 0 ? "      " : model.list[cardIndexNum].dinnerMenu4)
                        Spacer()
                        Image("HeartItemWhite")
                    }
                    .padding(.horizontal, 61)
                    
                    HStack{
                        Text(model.list.count == 0 ? "      " : model.list[cardIndexNum].dinnerMenu5)
                        Spacer()
                        Image("HeartItemWhite")
                    }
                    .padding(.horizontal, 61)
                }
                .fontWeight(.medium)
                .font(.system(size: 19))
                .foregroundColor(Color.white)
                
                Spacer()
                    .frame(maxHeight: 24)
            }
        }
        .frame(width: 343, height: 300)
        .rotation3DEffect(Angle(degrees: degree), axis: (x: 0, y: 1, z: 0))
    }
}

struct CardBackLunch : View {
    
    @EnvironmentObject var model: MealDataModel
    let width : CGFloat
    let height : CGFloat
    @Binding var degree : Double
    
    @Binding var cardIndexNum : Int

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 9)
                .fill(.white)
                .frame(width: width, height: height)
                .shadow(color: .black.opacity(0.16), radius: 9)
            VStack(spacing: 0) {
                Spacer()
                    .frame(maxHeight: 11)
                
                ZStack{
                    RoundedRectangle(cornerRadius: 6)
                        .foregroundColor(Color(hex: 0x5762EA))
                        .frame(width: 105, height: 35)
                    
                    Text("점심")
                        .fontWeight(.semibold)
                        .font(.system(size: 18))
                        .foregroundColor(Color.white)
                }
                
                Spacer()
                    .frame(maxHeight: 11)
                
                Text("\(model.list[cardIndexNum].Date[0])월\(model.list[cardIndexNum].Date[1])일 (\(model.list[cardIndexNum].Date[2]))")
                    .fontWeight(.regular)
                    .font(.system(size: 17))
                    .foregroundColor(Color.black)
                
                Spacer()
                
                VStack(spacing: 13) {
                    HStack{
                        Text(model.list.count == 0 ? "      " : model.list[cardIndexNum].lunchMenu1)
                        Spacer()
                        Image("HeartItemBlack")
                    }
                    .padding(.horizontal, 61)
                    
                    HStack{
                        Text(model.list.count == 0 ? "      " : model.list[cardIndexNum].lunchMenu2)
                        Spacer()
                        Image("HeartItemBlack")
                    }
                    .padding(.horizontal, 61)
                    
                    HStack{
                        Text(model.list.count == 0 ? "      " : model.list[cardIndexNum].lunchMenu3)
                        Spacer()
                        Image("HeartItemBlack")
                    }
                    .padding(.horizontal, 61)
                    
                    HStack{
                        Text(model.list.count == 0 ? "      " : model.list[cardIndexNum].lunchMenu4)
                        Spacer()
                        Image("HeartItemBlack")
                    }
                    .padding(.horizontal, 61)
                    
                    HStack{
                        Text(model.list.count == 0 ? "      " : model.list[cardIndexNum].lunchMenu5)
                        Spacer()
                        Image("HeartItemBlack")
                    }
                    .padding(.horizontal, 61)
                }
                .fontWeight(.medium)
                .font(.system(size: 19))
                
                Spacer()
                    .frame(maxHeight: 24)
            }
        }
        .frame(width: 343, height: 300)
        .rotation3DEffect(Angle(degrees: degree), axis: (x: 0, y: 1, z: 0))

    }
}

struct MealCard: View {
    //MARK: Variables
    @State var cardIndexNum: Int
    @State var backDegree = 0.0
    @State var frontDegree = -90.0
    @State var isFlipped = false

    let width : CGFloat = 200
    let height : CGFloat = 250
    let durationAndDelay : CGFloat = 0.1

    //MARK: Flip Card Function
    func flipCard () {
        isFlipped = !isFlipped
        if isFlipped {
            withAnimation(.linear(duration: durationAndDelay)) {
                backDegree = 90
            }
            withAnimation(.linear(duration: durationAndDelay).delay(durationAndDelay)){
                frontDegree = 0
            }
        } else {
            withAnimation(.linear(duration: durationAndDelay)) {
                frontDegree = -90
            }
            withAnimation(.linear(duration: durationAndDelay).delay(durationAndDelay)){
                backDegree = 0
            }
        }
    }
    //MARK: View Body
    var body: some View {
        ZStack {
            CardFrontDinner(width: 343, height: 300, degree: $frontDegree, cardIndexNum: $cardIndexNum)
            CardBackLunch(width: 343, height: 300, degree: $backDegree, cardIndexNum: $cardIndexNum)
        }.onTapGesture {
            flipCard ()
        }
    }
}


struct MealCard_Previews: PreviewProvider {
    static var previews: some View {
        
        @StateObject var mealDataModel = MealDataModel()
        
        MealCard(cardIndexNum: 0)
            .environmentObject(mealDataModel)
    }
}

