import SwiftUI
import Foundation
import YouTubePlayerKit

struct AboutView: View {
    
    @State private var isImageVisible = false
    @State private var isTextBubbleVisible = false
    
    var body: some View {
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
                    .onTapGesture {
                        isTextBubbleVisible.toggle()
                    }
                    .overlay(
                        Group {
                            if isTextBubbleVisible {
                                VStack( ) {
                                    Spacer()
                                    Text("This is a dynamic bubble text.")
                                        .foregroundColor(Color("AccentColor"))
                                        .multilineTextAlignment(.trailing)
                                        .padding()
                                        .background(Color("SecondaryColor"))
                                        .cornerRadius(10)
                                        .padding(.bottom, -20)
                                        .shadow(radius: 5)
                                }
                            } else {
                                EmptyView()
                            }
                        }
                    )

                Text("I am passionate about helping people create and build amazing digital products. I have been designing and developing software and digital products for fifteen years and I am an active supporter of the startup and tech community.")
                    .font(.title)
                    .foregroundColor(Color("SecondaryColor"))
                    .multilineTextAlignment(.leading)
                    .padding()
                
                Image("rome")
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
                    .onTapGesture {
                        isTextBubbleVisible.toggle()
                    }
                    .overlay(
                        Group {
                            if isTextBubbleVisible {
                                VStack( ) {
                                    Spacer()
                                    Text("WordPress Rome MeetUp.")
                                        .foregroundColor(Color("AccentColor"))
                                        .multilineTextAlignment(.trailing)
                                        .padding()
                                        .background(Color("SecondaryColor"))
                                        .cornerRadius(10)
                                        .padding(.bottom, -20)
                                        .shadow(radius: 5)
                                }
                            } else {
                                EmptyView()
                            }
                        }
                    )
                
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
                
                Image("WordCampSanJose")
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
                    .onTapGesture {
                        isTextBubbleVisible.toggle()
                    }
                    .overlay(
                        Group {
                            if isTextBubbleVisible {
                                VStack( ) {
                                    Spacer()
                                    Text("WordCamp San Jose 2018.")
                                        .foregroundColor(Color("AccentColor"))
                                        .multilineTextAlignment(.trailing)
                                        .padding()
                                        .background(Color("SecondaryColor"))
                                        .cornerRadius(10)
                                        .padding(.bottom, -20)
                                        .shadow(radius: 5)
                                }
                            } else {
                                EmptyView()
                            }
                        }
                    )
                
                Text("Seasoned speaker, having presented at numerous conferences and workshops around the world. I enjoy inspiring and motivating others to pursue their dreams, no matter how big or small. I am always eager to share my knowledge and experience and to help others learn and grow.")
                    .font(.body)
                    .foregroundColor(Color("SecondaryColor"))
                    .multilineTextAlignment(.leading)
                    .padding()
                
                VStack {
                    
                    NavigationLink(
                        destination: WhatIDoView(),
                        label: {
                            Text("Check What I Do")
                                .foregroundColor(Color("AccentColor"))
                                .padding()
                                .background(Color("SecondaryColor"))
                                .cornerRadius(100)
                        }
                    )
                    .padding(.top, 20)
                    
                    Text("Articles and Talks")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color("SecondaryColor"))
                        .multilineTextAlignment(.leading)
                        .padding()
                    
                    YouTubePlayerView("https://www.youtube.com/watch?v=W4cx5L12ewI&t=1s")
                        .frame(height: 300)
                } // VStack
                .padding(.horizontal, 20)
                .padding(.top, 20)
                
                LinksListView()
                    .padding(.top, 20)
            } // VStack
            .padding(3.0)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color("AccentColor"))
            
        } // ScrollView
        .background(Color("AccentColor"))
        
    } // Body
} // View
