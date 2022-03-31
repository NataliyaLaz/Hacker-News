//
//  ContentView.swift
//  Hacker News
//
//  Created by Nataliya Lazouskaya on 20.03.22.
//

import SwiftUI

struct ContentView: View {
    //whenever the network Manager updates this is going to trigger a rebuild of the List
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView{
            List(networkManager.posts) { article in
                NavigationLink(destination: DetailView(url: article.url)) {
                    HStack {
                        Text(String(article.points))
                        Text(article.title)
                    }
                }
            }
            .navigationBarTitle("H4X0R NEWS")
        }
        .onAppear {
            networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
