//
//  ModalView.swift
//  Git Project 1
//
//  Created by Paul M Sweazey on 2020.07.03.
//  Copyright © 2020 Paul M Sweazey. All rights reserved.
//

import SwiftUI

struct ModalView: View {
    var body: some View {
        VStack {
            Text("This is the Second View!")
            ScrollView {
                Text("Hello World, you Crazy lady, what have you been doing and where have you been?")
            }
        }.navigationBarTitle("Second View", displayMode: .inline)
    }
}

struct ModalView_Previews: PreviewProvider {
    static var previews: some View {
        ModalView()
    }
}
