import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            Image(systemName: "house")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Welcome to the Home Section!")
        }
    }
}
