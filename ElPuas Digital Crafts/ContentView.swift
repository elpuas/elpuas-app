//
//  ContentView.swift
//  ElPuas Digital Crafts
//
//  Created by Carlo  Navas on 10/8/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            
            AboutView()
                .tabItem {
                    Image(systemName: "person")
                    Text("About")
                }
            
            // Add other section views similarly
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

