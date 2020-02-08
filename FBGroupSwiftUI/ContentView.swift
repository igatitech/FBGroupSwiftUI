//
//  ContentView.swift
//  FBGroupSwiftUI
//
//  Created by iGatiTech on 14/06/19.
//  Copyright © 2019 iGatiTech. All rights reserved.
//

import SwiftUI

struct Post {
    let id: Int
    let imageIcon, username, time, text, imageName : String
}
struct ContentView : View {
    let posts : [Post] = [
        .init(id: 0, imageIcon: "AD", username: "Hillary Clinton", time: "Posted 8 hours ago", text: "This is a test text to visualise swiftUI look and feel. But this is really amazing!!", imageName: "Food"),
        .init(id: 1, imageIcon: "AE", username: "Bill Clinton", time: "Posted 9 hours ago", text: "This one is another next row text to see how it looks with dynamic UI", imageName: "Garden"),
        .init(id: 2, imageIcon: "AF", username: "Mack Bolson", time: "Posted 9 hours ago", text: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.", imageName: "Burger"),
        .init(id: 3, imageIcon: "AG", username: "John Parker", time: "Posted 10 hours ago", text: "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.", imageName: "Girl"),
        .init(id: 4, imageIcon: "AL", username: "Smith Methew", time: "Posted 11 hours ago", text: "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.", imageName: "Sunset"),
        .init(id: 5, imageIcon: "AI", username: "Rao Basu", time: "Posted 12 hours ago", text: "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour.", imageName: "Sand_rock")
    ]
    var body: some View {
        NavigationView {
            List {
                ForEach(posts, id: \.id) { post in
                   PostView(post: post)
                }
                }.navigationBarTitle(Text("Groups")).navigationViewStyle(StackNavigationViewStyle())
        }
    }
}

struct PostView : View {
    let post : Post
    var body: some View {
        VStack.init(alignment: .leading, spacing: 8) {
            HStack {
                Image(post.imageIcon)
                    .resizable()
                    .clipShape(Circle())
                    .frame(width: 60, height: 60)
                VStack.init(alignment: .leading) {
                    Text(post.username)
                        .font(.headline)
                    Text(post.time).font(.subheadline)
                }.padding(.leading, 8)
                
                }.padding(.leading, 16).padding(.top, 16)
            Text(post.text)
                .lineLimit(nil)
                .padding(.leading, 16).padding(.trailing, 16)
            Image(post.imageName)
                .resizable()
                .frame(height: 350)
                .clipped()
                .padding(.trailing, -20)
        }.padding(.leading, -20).padding(.bottom, -8)
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
