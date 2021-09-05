//
//  ButtonWithModal.swift
//  OtusHomeWork
//
//  Created by Константин Надоненко on 29.08.2021.
//

import SwiftUI

struct ButtonWithModal: View {

    @State private var showingSheet = false

    var body: some View {
        VStack {
            Button {
                showingSheet.toggle()
            } label: {
                Text("Open modal view")
            }.sheet(isPresented: $showingSheet, content: {
                ModalSheet()
            })
        }
    }
}

struct ButtonWithModal_Previews: PreviewProvider {
    static var previews: some View {
        ButtonWithModal()
    }
}

struct ModalSheet: View {

    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        VStack {
            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                Text("Dismiss me now!")
            }
        }
    }
}
