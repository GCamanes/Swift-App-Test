/*
 See LICENSE folder for this sample’s licensing information.
 */

import SwiftUI

struct TileView: View {
    let content: Content
    
    var body: some View {
        Text(content.name)
            .multilineTextAlignment(.center)
            .accessibilityAddTraits(.isHeader)
            .frame(width: ScreenHelper.tileSize().width, height: ScreenHelper.tileSize().height, alignment: Alignment.center)
            .foregroundColor(content.theme.accentColor)
            .lineLimit(2)
            .background(content.theme.mainColor)
    }
}

struct TileView_Previews: PreviewProvider {
    static var content = Content.getRamdom()
    static var previews: some View {
        TileView(content: content)
            .background(content.theme.mainColor)
    }
}
