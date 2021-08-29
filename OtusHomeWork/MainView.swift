//
//  MainView.swift
//  OtusHomeWork
//
//  Created by Константин Надоненко on 29.08.2021.
//

import SwiftUI

struct MainView: View {

    @EnvironmentObject var profileViewModel: TabViewModel

    var body: some View {
        VStack {
            Button {
                profileViewModel.selectedTab = 1
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
