//
//  ContentView.swift
//  TechNews(SwiftUI)
//
//  Created by Mai Uchida on 2021/11/19.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView{
            List(networkManager.posts){ post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack{
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
                
            }
        .navigationBarTitle("TechNews")
        }
        .onAppear { //this is like viewdidload on swift
            self.networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


//let posts = [Post(id: "1", title: "Hello"),
//             Post(id: "2", title: "Hi"),
//             Post(id: "3", title: "Hey")]
