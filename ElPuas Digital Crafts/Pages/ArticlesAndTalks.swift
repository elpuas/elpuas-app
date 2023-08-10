//
//  ArticlesAndTalks.swift
//  ElPuas Digital Crafts
//
//  Created by Carlo  Navas on 10/8/23.
//

import Foundation
import SwiftUI

struct LinksListView: View {
    let links: [String] = [
        "Let’s create an FSE Theme",
        "WordPress FSE and Block-Based Themes",
        "Local Development with Node and Express",
        "StorybookJS and Why You Should Use It",
        "Talk: Full Site Editing y temas basados en bloques",
        "Talk: Headless WordPress, Gatsby or NextJS",
        "Talk: Building a Gatsby Community in Latin America with Alfredo Navas",
        "Talk: Gatsby & WordPress"
    ]
    
    let urls: [String] = [
        "https://webdevstudios.com/2022/07/05/create-fse-theme/",
        "https://webdevstudios.com/2021/09/14/wordpress-fse-and-block-based-themes/",
        "https://webdevstudios.com/2021/05/06/local-development-with-node-and-express/",
        "https://webdevstudios.com/2020/04/09/storybookjs/",
        "https://wordpress.tv/2021/10/10/alfredo-navas-full-site-editing-y-temas-basados-en-bloques/",
        "https://wordpress.tv/2021/06/30/alfredo-navas-headless-wordpress-gatsby-or-nextjs/",
        "https://www.youtube.com/watch?v=B33I2bvt6TQ&t=11s",
        "https://www.youtube.com/watch?v=Df2AkeSS1PQ"
    ]

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            ForEach(links.indices, id: \.self) { index in
                Button(action: {
                    if let url = URL(string: urls[index]) {
                        // Open the link in the user's default browser
                        UIApplication.shared.open(url)
                    }
                }) {
                    Text(links[index])
                }
                .padding(.horizontal, 20)
            }
        }
    }
}
