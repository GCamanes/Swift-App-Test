//
//  DetailView.swift
//  Scrumdinger
//
//  Created by Guillaume Camanes on 05/04/2023.
//

import SwiftUI

struct ContentDetailView: View {
    let content: Content
    
    var body: some View {
        return Text(content.name)
    }
}

struct ContentDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContentDetailView(content: Content.getRamdom())
        }
    }
}
