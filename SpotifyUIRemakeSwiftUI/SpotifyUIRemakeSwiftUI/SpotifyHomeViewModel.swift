//
//  SpotifyHomeViewViewModel.swift
//  SpotifyUIRemakeSwiftUI
//
//  Created by Delstun McCray on 12/9/23.
//

import Foundation
import SwiftUI

struct SpotifyItem {
    let title: String
    let image: Color // Using Color type for hex color values
}

class SpotifyHomeViewModel: ObservableObject {
    @Published var recentlyListenedTo: [SpotifyItem]
    @Published var newReleaseFromSpecificArtist: SpotifyItem
    @Published var jumpBackInSection: SpotifyItem
    @Published var recentlyPlayed: [SpotifyItem]
    @Published var favoriteArtists: [SpotifyItem]
    @Published var categorySelected = "All"

    enum SpotifyCategories: String, CaseIterable {
        case all = "All"
        case music = "Music"
        case podcast = "Podcast"
        case audioBooks = "Audiobooks"
        case wrapped = "Wrapped"
    }
    
    init() {
        let jojiColor = Color(hex: 0x800080) // Joji-themed color
        let lalalandColor = Color(hex: 0xFFA07A) // Lalaland-themed color
        let jvkeColor = Color(hex: 0x6495ED) // JVKE-themed color
        let richBrianColor = Color(hex: 0x008080) // Rich Brian-themed color
        
        recentlyListenedTo = [
            SpotifyItem(title: "Christmas Music 🎅🎄🎁", image: .green),
            SpotifyItem(title: "Your Top Songs 2023", image: .blue),
            SpotifyItem(title: "LalaLand", image: lalalandColor),
            SpotifyItem(title: "Cold", image: richBrianColor),
            SpotifyItem(title: "Glimpse of Us", image: jojiColor),
            SpotifyItem(title: "La La Land (Original Motion Picture)", image: lalalandColor),
            SpotifyItem(title: "This is what Space Feels Like", image: jvkeColor),
            SpotifyItem(title: "Amen", image: richBrianColor),
        ]
        
        newReleaseFromSpecificArtist = SpotifyItem(title: "New Release from Joji", image: jojiColor)
        jumpBackInSection = SpotifyItem(title: "Jump Back in Lalaland", image: lalalandColor)
        
        recentlyPlayed =  [
            SpotifyItem(title: "Glimpse of Us", image: jojiColor),
            SpotifyItem(title: "La La Land (Original Motion Picture)", image: lalalandColor),
            SpotifyItem(title: "This is what Space Feels Like", image: jvkeColor),
            SpotifyItem(title: "Amen", image: richBrianColor)
        ]
        
        favoriteArtists = [
            SpotifyItem(title: "Joji", image: jojiColor),
            SpotifyItem(title: "Lalaland", image: lalalandColor),
            SpotifyItem(title: "JVKE", image: jvkeColor),
            SpotifyItem(title: "Rich Brian", image: richBrianColor)
        ]
    }
}
extension Color {
    init(hex: UInt) {
        let red = Double((hex >> 16) & 0xFF) / 255.0
        let green = Double((hex >> 8) & 0xFF) / 255.0
        let blue = Double(hex & 0xFF) / 255.0
        self.init(red: red, green: green, blue: blue)
    }
}
