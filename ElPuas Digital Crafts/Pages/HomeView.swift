import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 16) {
            Text("Web Artisan, Open Source Advocate")
                .multilineTextAlignment(.leading)
                .accentColor(/*@START_MENU_TOKEN@*/Color("SecondaryColor")/*@END_MENU_TOKEN@*/)
                
            Text("Welcome to the Home Section!")
                .multilineTextAlignment(.leading)
                .modifier(HeadingStyle())
        }
        .padding(3.0)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("AccentColor"))
    }
}
