//
//  ContentView.swift
//  OtusHomeWork
//
//  Created by Константин Надоненко on 29.08.2021.
//

import SwiftUI

struct ContentView: View {

    @EnvironmentObject var router: Router

    var body: some View {
        TabView(selection: $router.selectedTab) {
            MainView().tabItem {
                Text("Main")
                Image(systemName: "paperplane")
            }.tag(0)
            ListView().tabItem {
                Text("List")
                Image(systemName: "folder")
            }.tag(1)
            ButtonWithModal().tabItem {
                Text("Modal")
                Image(systemName: "tray.circle.fill")
            }.tag(2)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
