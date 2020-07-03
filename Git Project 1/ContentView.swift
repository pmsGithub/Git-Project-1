//
//  ContentView.swift
//  Git Project 1
//
//  Created by Paul M Sweazey on 2020.07.03.
//  Copyright © 2020 Paul M Sweazey. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var isPresented = false
    var body: some View {
        NavigationView {
            Button("Show Modal") {
                self.isPresented = true
            }.sheet(isPresented: $isPresented) {
                ModalView()
            }
        .navigationBarTitle("Xcode and Git")
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
