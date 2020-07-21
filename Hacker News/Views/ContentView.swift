//
//  ContentView.swift
//  Hacker News
//
//  Created by Mary Arnold on 7/14/20.
//  Copyright © 2020 Beth Arnold. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    init() {
           UINavigationBar.appearance().backgroundColor = .red
        UINavigationBar.appearance().largeTitleTextAttributes = [
        .foregroundColor: UIColor.white,
        .font : UIFont(name:"Papyrus", size: 40)!]
       }
    
    //@ObservedObject subscribes to the newtorkManager & listens for changes to update it's views accordingly (managing state)
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        
        //Navigation button to take us to the articles (new Viewer)
        NavigationView {
            
            //List View
            List(networkManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
            }
            .navigationBarTitle("HACKER NEWS")
        }
        .accentColor(.white)
        .onAppear {
            self.networkManager.fetchData()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}





//let posts = [
//    Post(id: "1", title: "Hello"),
//    Post(id: "2", title: "Bonjour"),
//    Post(id: "3", title: "Hola")
//]
