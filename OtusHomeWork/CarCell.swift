//
//  ListCell.swift
//  OtusHomeWork
//
//  Created by Константин Надоненко on 05.09.2021.
//

import SwiftUI

struct CarCell: View {
    let car: Car

    var body: some View {
        NavigationLink(destination: CarView(emoji: car.emoji)) {
            Text(car.text)
        }
    }
}
