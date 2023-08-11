//
//  File.swift
//  ElPuas Digital Crafts
//
//  Created by Carlo  Navas on 10/8/23.
//

import Foundation
import SwiftUI

struct ImageWithTextBubble: View {
    var imageName: String
    var bubbleText: String
    
    @State private var isBubbleVisible = false
    
    var body: some View {
        VStack {
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: .infinity)
                .padding(.horizontal, 20)
                .opacity(isBubbleVisible ? 1 : 0)
                .onTapGesture {
                    isBubbleVisible.toggle()
                }
            
            if isBubbleVisible {
                Text(bubbleText)
                    .foregroundColor(.black)
                    .multilineTextAlignment(.center)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                    .padding(.vertical, 10)
                    .padding(.horizontal, 20)
                    .shadow(radius: 5)
            }
        }
        .onAppear {
            withAnimation(.easeInOut(duration: 0.75)) {
                isBubbleVisible = true
            }
        }
    }
}

