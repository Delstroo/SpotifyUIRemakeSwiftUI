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
    let category: SpotifyCategories // Adding a category property
    let description: String?
    
    enum SpotifyCategories: String {
        case all = "All"
        case music = "Music"
        case podcast = "Podcast"
        case audioBooks = "Audiobooks"
        case wrapped = "Wrapped"
    }
    
    enum SpotifySearchCategories: String {
        case recentSearches = "Recent Searches"
        case startBrowsing = "Start Browsing"
        case music = "Music"
        case podcasts = "Podcasts"
        case audiobooks = "Audiobooks"
        case liveEvents = "Live Events"
        case merch = "Merch"
        case wrapped = "Wrapped"
        case musicGenres = "Music Genres"
    }
    
    init(title: String, image: Color, category: SpotifyCategories, description: String? = nil) {
        self.title = title
        self.image = image
        self.category = category
        self.description = description
    }
}

class SpotifyHomeViewModel: ObservableObject {
    @Published var recentlyListenedTo: [SpotifyItem]
    @Published var newReleaseFromSpecificArtist: SpotifyItem
    @Published var jumpBackInSection: SpotifyItem
    @Published var recentlyPlayed: [SpotifyItem]
    @Published var favoriteArtists: [SpotifyItem]
    @Published var podcasts: [SpotifyItem]
    @Published var playlists: [SpotifyItem]
    @Published var categorySelected = "All"
    
    let allCategories: [SpotifyItem.SpotifyCategories] = [.all, .music, .podcast, .audioBooks, .wrapped]


    init() {
        let jojiColor = Color(hex: 0x800080) // Joji-themed color
        let lalalandColor = Color(hex: 0xFFA07A) // Lalaland-themed color
        let jvkeColor = Color(hex: 0x6495ED) // JVKE-themed color
        let richBrianColor = Color(hex: 0x008080) // Rich Brian-themed color
        
        recentlyListenedTo = [
            SpotifyItem(title: "Christmas Music 🎅🎄🎁", image: .green, category: .music),
            SpotifyItem(title: "Your Top Songs 2023", image: .blue, category: .music),
            SpotifyItem(title: "LalaLand", image: lalalandColor, category: .music),
            SpotifyItem(title: "Cold", image: richBrianColor, category: .music),
            SpotifyItem(title: "Glimpse of Us", image: jojiColor, category: .music),
            SpotifyItem(title: "La La Land (Original Motion Picture)", image: lalalandColor, category: .music),
            SpotifyItem(title: "This is what Space Feels Like", image: jvkeColor, category: .music),
            SpotifyItem(title: "Amen", image: richBrianColor, category: .music),
        ]
        
        podcasts = [
            SpotifyItem(title: "Chris Chan: A Comprehensive History", image: .red, category: .podcast, description: "Chris Chan: A Comprehensive History"),
            SpotifyItem(title: "Serial", image: lalalandColor, category: .podcast, description: "Korn Flakes"),
            SpotifyItem(title: "Stuff You Should Know", image: jvkeColor, category: .podcast, description: "Someone"),
            SpotifyItem(title: "TED Radio Hour", image: richBrianColor, category: .podcast, description: "TED"),
            SpotifyItem(title: "The Joe Rogan Experince", image: .yellow, category: .podcast, description: "Joe Rogan")
        ]
        playlists = [
            SpotifyItem(title: "Glimpse of Us", image: jojiColor, category: .music),
            SpotifyItem(title: "La La Land (Original Motion Picture)", image: lalalandColor, category: .music),
            SpotifyItem(title: "This is what Space Feels Like", image: jvkeColor, category: .music),
            SpotifyItem(title: "Amen", image: richBrianColor, category: .music)
        ]

        newReleaseFromSpecificArtist = SpotifyItem(title: "New Release from Joji", image: jojiColor, category: .music)
        jumpBackInSection = SpotifyItem(title: "Jump Back in Lalaland", image: lalalandColor, category: .music)

        recentlyPlayed =  [
            SpotifyItem(title: "Glimpse of Us", image: jojiColor, category: .music),
            SpotifyItem(title: "La La Land (Original Motion Picture)", image: lalalandColor, category: .music),
            SpotifyItem(title: "This is what Space Feels Like", image: jvkeColor, category: .music),
            SpotifyItem(title: "Amen", image: richBrianColor, category: .music)
        ]

        favoriteArtists = [
            SpotifyItem(title: "Joji", image: jojiColor, category: .music),
            SpotifyItem(title: "Lalaland", image: lalalandColor, category: .music),
            SpotifyItem(title: "JVKE", image: jvkeColor, category: .music),
            SpotifyItem(title: "Rich Brian", image: richBrianColor, category: .music)
        ]
    }
    
    // Other existing code
    
    // Enums and extensions
}

extension Color {
    init(hex: UInt) {
        let red = Double((hex >> 16) & 0xFF) / 255.0
        let green = Double((hex >> 8) & 0xFF) / 255.0
        let blue = Double(hex & 0xFF) / 255.0
        self.init(red: red, green: green, blue: blue)
    }
}
