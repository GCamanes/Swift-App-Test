//
//  ContentView.swift
//  Test_product
//
//  Created by Guillaume Camanes on 06/04/2023.
//

import SwiftUI

struct ContentsView: View {
    let rails: [[Content]] = Content.getRandomRails(number: 10)
    var body: some View {
        ScrollView(showsIndicators: false) {
            LazyVStack(spacing: 30) {
                ForEach(Array(rails.enumerated()), id: \.element) { index, contents in
                    RailView(contents: contents)
                }
            }
            .padding([.bottom, .top], 30)
        }
    }
}

struct ContentsView_Previews: PreviewProvider {
    static var previews: some View {
        ContentsView()
    }
}