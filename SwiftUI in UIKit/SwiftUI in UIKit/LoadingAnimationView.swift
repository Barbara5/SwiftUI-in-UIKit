//
//  ContentView.swift
//  CustomLoadingSwiftUI
//
//  Created by Barbara Beatrice on 24/03/22.
//

import SwiftUI

struct LoadingAnimationView: View {
    
    @State var scale : CGFloat = 1
    
    var body: some View {
        
        HStack (spacing: 30){
            ForEach (0...2, id: \.self) { item in
                RoundedRectangle(cornerRadius: 6)
                    .foregroundColor(.teal)
                    .frame(width: 20, height: 20)
                    .opacity(0.6)
                    .scaleEffect(scale)
                
                    .onAppear{
                        let animation = Animation.spring()
                        let repeatAnimation = animation.repeatForever(autoreverses: true)
                        
                        withAnimation(repeatAnimation) {
                            scale = 1.6
                        }
                    }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingAnimationView()
    }
}
