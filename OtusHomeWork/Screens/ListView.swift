//
//  ListView.swift
//  OtusHomeWork
//
//  Created by Константин Надоненко on 29.08.2021.
//

import SwiftUI

final class ListViewModel: ObservableObject {

    @Published private(set) var cars = [
        Car(text: "Car", emoji: "🚗"),
        Car(text: "Bus", emoji: "🚌"),
        Car(text: "Car", emoji: "🚗"),
        Car(text: "Bus", emoji: "🚌")
    ]

}

extension Car: Identifiable {
    var id: String {
        text
    }
}

struct ListView: View {

    @EnvironmentObject var viewModel: ListViewModel
    @EnvironmentObject var router: Router

    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.cars) { item in
                    CarCell(car: item)
                }
            }.navigationBarTitleDisplayMode(.inline)
            .listStyle(SidebarListStyle())
            .overlay(NavigationLink(destination: CarView(emoji: viewModel.cars[0].emoji),
                                    isActive: $router.needToOpen) {
                EmptyView().hidden()
            })
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
