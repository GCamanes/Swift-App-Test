//
//  Content.swift
//  Test_product
//
//  Created by Guillaume Camanes on 06/04/2023.
//

import Foundation

struct Content: Hashable {
    var name: String
    var imageUrl: String
    var theme: Theme
    
    init(name: String, imageUrl: String = "", theme: Theme) {
        self.name = name
        self.imageUrl = imageUrl
        self.theme = theme
    }
}

extension Content {
    static let sampleContentName: [String] =
    [
        "Batman",
        "Guardian of Galaxy",
        "Return of Jedi",
        "Ghost Bursters",
        "Indiana Johns",
        "Watchmen",
        "Lego Movie",
        "Batman Lego Movie",
        "Lord of The Ring: Two Towers",
        "Avengers",
        "TMNT",
        "Avatar 2",
    ]
    
    static func getRamdom() -> Content {
        return Content(name: sampleContentName.randomElement()!, theme: Theme.allCases.randomElement()!)
    }
    
    static func getRamdom(randomPick n: Int) -> [Content] {
        var contents: [Content] = []
        for _ in 0..<n {
            contents.append(getRamdom())
        }
        return contents
    }
    
    static func getRandomRails(number n: Int) -> [[Content]] {
        var rails: [[Content]] = []
        for _ in 0..<n {
            rails.append(Content.getRamdom(randomPick: 6))
        }
        return rails
    }
}
