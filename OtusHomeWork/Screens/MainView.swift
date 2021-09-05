//
//  MainView.swift
//  OtusHomeWork
//
//  Created by Константин Надоненко on 29.08.2021.
//

import SwiftUI

struct MainView: View {

    @EnvironmentObject var router: Router

    var body: some View {
        VStack {
            Button {
                router.selectedTab = 1
                router.needToOpen = true
            } label: {
                Text("Open second tab")
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
