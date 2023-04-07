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
        ScrollView {
            Text("FULL INFORMATION PAGE")
                .frame(maxWidth: .infinity)
                .foregroundColor(.white)
                .lineLimit(2)
                .padding()
                .background(.blue)
        }
        // Allow UI to not reserve space for navigation title
        .navigationBarTitle("", displayMode: .inline)
    }
}

struct ContentDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContentDetailView(content: Content.getRamdom())
        }
    }
}
