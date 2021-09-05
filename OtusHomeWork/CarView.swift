//
//  SwiftUIView.swift
//  OtusHomeWork
//
//  Created by Константин Надоненко on 05.09.2021.
//

import SwiftUI

struct CarView: View {

    let emoji: String

    var body: some View {
        Text(emoji).font(.largeTitle)
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        CarView(emoji: "🚗")
    }
}
