//
//  ContentView.swift
//  OtusHomeWork
//
//  Created by Константин Надоненко on 29.08.2021.
//

import SwiftUI

final class TabViewModel: ObservableObject {

    @Published var selectedTab = 0

}

struct ContentView: View {

    @ObservedObject private var viewModel = TabViewModel()

    var body: some View {
        TabView(selection: $viewModel.selectedTab) {
            MainView().tabItem {
                Text("Main")
                Image(systemName: "paperplane")
            }.environmentObject(viewModel).onTapGesture {
                self.viewModel.selectedTab = 1
            }.tag(0)
            ListView().tabItem {
                Text("List")
                Image(systemName: "folder")
            }.onTapGesture {
                self.viewModel.selectedTab = 2
            }.tag(1)
            ButtonWithModal().tabItem {
                Text("Modal")
                Image(systemName: "tray.circle.fill")
            }.onTapGesture {
                self.viewModel.selectedTab = 3
            }.tag(2)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
