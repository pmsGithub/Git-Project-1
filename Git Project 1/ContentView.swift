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
    @State var atom1 = "Wir"
    @State var atom2 = "gehen"
    
    @State var sentence1: [String] = [
        "Er", "wollte", "es", "sich", "nicht", "eingestehen,",
        "aber", "er", "hatte", "Angst", "vor", "diesem", "Wasser,",
        "Angst", "vor", "dem,",
        "was", "sein", "Fuß", "da", "womöglich", "berührte,",
        "wenn", "er", "hindurchwatete,",
        "oder", "schlimmer", "noch,",
        "was", "um", "seine", "Beine", "streichen", "oder", "in", "seine", "Stiefel", "rinnen", "konnte."
    ]
    @State var sentence2: [String] = [
        "Aber", "er", "glaubte", "jetzt", "zum", "letzten", "Mal", "da", "durchzumüssen."
    ]
    
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: ModalView()) {
                    Text("Go Next")
                }.foregroundColor(.blue)
                    .navigationBarTitle("German Yoda")
                    .padding()
                HStack {
                    ForEach(0 ..< 5) { item in
                        ZStack {
                            RoundedRectangle(cornerRadius: 10.0).stroke()
                            TextField("Atom1:", text: self.$sentence1[item]).padding(2).foregroundColor(.purple)
                        }
                    }
                }
                NavigationLink(destination: OtherModalView()) {
                    Text("Go Other Next")
                }.foregroundColor(.green)
                    .navigationBarTitle("Xcode and Gaddup")
                    .padding()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
