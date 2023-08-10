import SwiftUI

struct AboutView: View {
    var body: some View {
        VStack {
            Image(systemName: "person")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Learn more about us!")
        }
    }
}
