import SwiftUI

struct HeadingStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .fontWeight(.bold)
            .padding(.vertical, 8)
    }
}

extension View {
    func headingStyle() -> some View {
        self.modifier(HeadingStyle())
    }
}
