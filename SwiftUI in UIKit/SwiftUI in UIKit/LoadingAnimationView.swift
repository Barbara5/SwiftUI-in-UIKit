//
//  ContentView.swift
//  CustomLoadingSwiftUI
//
//  Created by Barbara Beatrice on 24/03/22.
//

import SwiftUI

struct LoadingAnimationView: View {
    
    var body: some View {
        
        HStack (spacing: 30) {
            RectangleView()
            RectangleView(delayAnimation: 0.4)
            RectangleView(delayAnimation: 0.6)
        }
    }
}


struct RectangleView : View {
    
    @State var delayAnimation : Double = 0
    @State var originalOffset: CGFloat = 0
    @State var animationOffset: CGFloat = -15
    
    var body: some View {
        RoundedRectangle(cornerRadius: 8)
            .foregroundColor(.teal)
            .frame(width: 40, height: 40)
            .offset(y: originalOffset)
            .onAppear {
                withAnimation(Animation.linear(duration: 0.7).repeatForever(autoreverses: true).delay(delayAnimation)) {
                    swap(&self.originalOffset, &self.animationOffset)
                }
            }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingAnimationView()
    }
}
