//
//  ContentView.swift
//  OperaHouseOfKomotini
//
//  Created by Angelos Staboulis on 21/5/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            HomeView().tabItem {
                Image(systemName: "house")
                Text("Home")
            }
            FindMegaro().tabItem {
                Image(systemName: "map")
                Text("Find Opera House of Komotini")
            }
            Information().tabItem {
                Image(systemName: "info")
                Text("Information")
            }
            SocialMedia().tabItem {
                Image(systemName: "f.cursive")
                Text("Social Media")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
