//
//  RailView.swift
//  Test_product
//
//  Created by Guillaume Camanes on 06/04/2023.
//

import SwiftUI

struct RailView: View {
    let contents: [Content]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack(spacing: 8){
                ForEach(Array(contents.enumerated()), id: \.element) { index, content in
                    TileView(content: content)
                        .padding(.leading, index == 0 ? 16 : 0)
                        .padding(.trailing, index == contents.count - 1 ? 16 : 0)
                }
            }
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var contents = Content.getRamdom(randomPick: 10)
    static var previews: some View {
        RailView(contents: contents)
    }
}
