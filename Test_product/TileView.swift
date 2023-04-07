/*
 See LICENSE folder for this sample’s licensing information.
 */

import SwiftUI

struct TileView: View {
    let content: Content
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(content.name)
                .multilineTextAlignment(.center)
                .accessibilityAddTraits(.isHeader)
                .frame(width: ScreenHelper.tileSize().width, height: ScreenHelper.tileSize().height, alignment: Alignment.center)
                .foregroundColor(content.theme.accentColor)
                .lineLimit(2)
                .background(content.theme.mainColor)
                .cornerRadius(8)
            Text(content.name)
                .foregroundColor(.black)
                .lineLimit(1)
                .frame(width: ScreenHelper.tileSize().width, alignment: Alignment.leading)
        }
    }
}

struct TileView_Previews: PreviewProvider {
    static var content = Content.getRamdom()
    static var previews: some View {
        TileView(content: content)
    }
}
