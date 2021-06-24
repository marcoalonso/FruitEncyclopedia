//
//  FruitCardView.swift
//  Fructus
//
//  Created by marco rodriguez on 24/06/21.
//

import SwiftUI

struct FruitCardView: View {
    //MARK: - Properties
    
    var fruit: Fruit
    
    @State private var isAnimating: Bool = false
    
    //MARK: Body
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                //Fuit: Image
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                 
                //Fuit: Tittle
                Text(fruit.title)
                    .foregroundColor(Color.white)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.45), radius: 2, x: 2,y: 2)
                //Fuit: Headline
                Text(fruit.headline)
                    .foregroundColor(Color(.white))
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                //Button: Start
                StartButtonView()
                
            } //: VStack
        } //: ZStack
        .onAppear() {
            withAnimation(.easeOut(duration: 0.5)){
                isAnimating = true
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        .background(LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal, 20)
    }
}

//MARK: Preview
struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView(fruit: fruitsData[4])
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
