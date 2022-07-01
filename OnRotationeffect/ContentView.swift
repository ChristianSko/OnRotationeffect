//
//  ContentView.swift
//  OnRotationeffect
//
//  Created by Skorobogatow, Christian on 1/7/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var angle: Angle = Angle(degrees: 0)
    
    var body: some View {
        Text("Hello, world!")
            .font(.title)
            .foregroundColor(.white)
            .padding(50)
            .background(.blue)
            .cornerRadius(20)
            .rotationEffect(angle)
            .gesture(
                RotationGesture()
                    .onChanged{ value in
                        angle = value
                    }
                    .onEnded{ value in
                        withAnimation(.spring()) {
                            angle = Angle(degrees: 0)
                        }
                    }
            )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
