//
//  StartButtonView.swift
//  Fructus
//
//  Created by marco rodriguez on 24/06/21.
//

import SwiftUI

struct StartButtonView: View {
    //MARK:- Propiedades
    
    //MARK:- Cuerpo
    var body: some View  {
        HStack (spacing: 8){
            Button(action: {
                print("Exit onboarding")
            }) {
                HStack(spacing: 8) {
                    Text("Start")
                    
                    Image(systemName: "arrow.right.circle")
                        .imageScale(.large)
                }
                .padding(.horizontal, 16)
                .padding(.vertical, 10)
                .background(
                    Capsule().strokeBorder(Color.white, lineWidth: 2.5)
                )
            } //: Button
            .accentColor(Color.white)
        }
    }
}

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
