import SwiftUI
import Foundation

struct AboutView: View {
    
    @State private var isImageVisible = false
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    Image("Family")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(maxWidth: .infinity)
                        .padding(.horizontal, 20)
                        .opacity(isImageVisible ? 1 : 0)
                        .onAppear {
                            withAnimation(.easeInOut(duration: 0.75)) {
                                isImageVisible = true
                            }
                        }

                    Text("I am passionate about helping people create and build amazing digital products. I have been designing and developing software and digital products for fifteen years and I am an active supporter of the startup and tech community.")
                        .font(.title)
                        .foregroundColor(Color("SecondaryColor"))
                        .multilineTextAlignment(.leading)
                        .padding()
                    
                    Text("I specialize in creating visually appealing user interfaces and making sure that they are a pleasure to use. I am an advocate for accessibility, usability, and design consistency. I believe that a product should be easy and enjoyable to use, no matter the user's skill level. I also work closely with development teams to ensure that the product functions properly and meets the customer's needs.")
                        .font(.body)
                        .foregroundColor(Color("SecondaryColor"))
                        .multilineTextAlignment(.leading)
                        .padding()
                    
                    Text("Is all about creating beautiful, functional products and helping others to do the same. I believe in the power of technology to make a positive difference in the world, and I am always looking for new ways to use it to improve people's lives.")
                        .font(.body)
                        .foregroundColor(Color("SecondaryColor"))
                        .multilineTextAlignment(.leading)
                        .padding()
                    
                    Text("Seasoned speaker, having presented at numerous conferences and workshops around the world. I enjoy inspiring and motivating others to pursue their dreams, no matter how big or small. I am always eager to share my knowledge and experience and to help others learn and grow.")
                        .font(.body)
                        .foregroundColor(Color("SecondaryColor"))
                        .multilineTextAlignment(.leading)
                        .padding()
                    
                    Text("Articles and Talks")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color("SecondaryColor"))
                        .multilineTextAlignment(.leading)
                        .padding()
                    
                    LinksListView()
                        
                }
                .padding(3.0)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color("AccentColor"))
            }
            .background(Color("AccentColor"))
        }
    }
}
