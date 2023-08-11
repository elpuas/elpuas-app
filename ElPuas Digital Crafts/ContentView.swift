//
//  ContentView.swift
//
//  ElPuas Digital Crafts
//
//  Created by Carlo  Navas on 10/8/23.
//

import SwiftUI
import Foundation

struct ContentView: View {
    init() {
            UITabBar.appearance().isHidden = true
        }
    
    var body: some View {
        TabView {
            HomeView()
            
            AboutView()
            
            WhatIDoView()
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
