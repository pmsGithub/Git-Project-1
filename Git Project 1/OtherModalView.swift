//
//  OtherModalView.swift
//  Git Project 1
//
//  Created by Paul M Sweazey on 2020.07.03.
//  Copyright © 2020 Paul M Sweazey. All rights reserved.
//

import SwiftUI

struct OtherModalView: View {
    var body: some View {
        VStack {
            Text("This is the Other Second View!")
        }.navigationBarTitle("Other Second View", displayMode: .inline)
    }
}

struct OtherModalView_Previews: PreviewProvider {
    static var previews: some View {
        OtherModalView()
    }
}
