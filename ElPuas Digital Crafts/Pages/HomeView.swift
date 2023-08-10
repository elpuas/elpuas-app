import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            VStack(alignment: .center, spacing: 16) {
                Image("SkullIcon")
                    .resizable()
                    .foregroundColor(Color("SecondaryColor"))
                    .frame(width: 80.0, height: 80.0)

                
                Text("Web Artisan, Open Source Advocate")
                    .font(.subheadline)
                    .foregroundColor(Color("SecondaryColor"))
                    .multilineTextAlignment(.center)
                    
                    
                Text("I code digital crafts for humans.")
                    .multilineTextAlignment(.center)
                    .modifier(HeadingStyle())
                
                NavigationLink(
                    destination: AboutView(),
                    label: {
                        Text("Learn More")
                            .foregroundColor(Color("AccentColor"))
                            .padding()
                            .background(Color("SecondaryColor"))
                            .cornerRadius(100)
                    }
                )
                
            }
            .padding(3.0)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color("AccentColor"))
        }
        .accentColor(Color("SecondaryColor"))
    }
}
