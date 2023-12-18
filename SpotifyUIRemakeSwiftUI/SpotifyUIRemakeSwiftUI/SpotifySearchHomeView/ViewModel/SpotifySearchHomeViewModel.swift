//
//  SpotifySearchHomeViewModel.swift
//  SpotifyUIRemakeSwiftUI
//
//  Created by Delstun McCray on 12/15/23.
//

import Foundation
import SwiftUI

class SpotifySearchHomeViewModel: ObservableObject {
    @Published var recentlyListenedTo: [SpotifyItem]
    @Published var newReleaseFromSpecificArtist: SpotifyItem
    @Published var jumpBackInSection: SpotifyItem
    @Published var recentlyPlayed: [SpotifyItem]
    @Published var favoriteArtists: [SpotifyItem]
    @Published var podcasts: [SpotifyItem]
    @Published var playlists: [SpotifyItem]
    @Published var searchCategories: [SpotifyItem]
    @Published var categorySelected = "All"
    @Published var genre: [SpotifyItem]
    
    
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
    
    let allCategories: [SpotifyItem.SpotifyCategories] = [.all, .music, .podcast, .audioBooks, .wrapped]


    init() {
        let jojiColor = Color(hex: 0x800080) // Joji-themed color
        let lalalandColor = Color(hex: 0xFFA07A) // Lalaland-themed color
        let jvkeColor = Color(hex: 0x6495ED) // JVKE-themed color
        let richBrianColor = Color(hex: 0x008080) // Rich Brian-themed color
        
        searchCategories = [
            SpotifyItem(title: "Music", image: Color(hex: 0xEF008E), category: .all),
            SpotifyItem(title: "Podcasts", image: Color(hex: 0x00664F), category: .all),
            SpotifyItem(title: "Audiobooks", image: Color(hex: 0x193367), category: .all),
            SpotifyItem(title: "Live Events", image: Color(hex: 0x9000F1), category: .all),
            SpotifyItem(title: "Merch", image: Color(hex: 0x008767), category: .all),
            SpotifyItem(title: "Wrapped", image: Color(hex: 0x470077), category: .all),
            
            
        ]
        
        genre = [
            SpotifyItem(title: "#reminiscing", image: Color(hex: 0xAB5C44), category: .all),
            SpotifyItem(title: "#light academia", image: Color(hex: 0xFB4C21), category: .all),
            SpotifyItem(title: "#bedroom pop", image: Color(hex: 0x50463E), category: .all)
        
        ]
        
        recentlyListenedTo = [
            SpotifyItem(title: "Christmas Music 🎅🎄🎁", image: .green, category: .music),
            SpotifyItem(title: "Your Top Songs 2023", image: .blue, category: .music),
            SpotifyItem(title: "LalaLand", image: lalalandColor, category: .music),
            SpotifyItem(title: "Cold", image: richBrianColor, category: .music),
            SpotifyItem(title: "Glimpse of Us", image: jojiColor, category: .music),
            SpotifyItem(title: "La La Land (Original Motion Picture)", image: lalalandColor, category: .music),
            SpotifyItem(title: "This is what Space Feels Like", image: jvkeColor, category: .music),
            SpotifyItem(title: "Amen", image: richBrianColor, category: .music),
            SpotifyItem(title: "Chris Chan: A Comprehensive History", image: .red, category: .podcast, description: "Chris Chan: A Comprehensive History"),
            SpotifyItem(title: "Serial", image: lalalandColor, category: .podcast, description: "Korn Flakes"),
            SpotifyItem(title: "Stuff You Should Know", image: jvkeColor, category: .podcast, description: "Someone"),
            SpotifyItem(title: "TED Radio Hour", image: richBrianColor, category: .podcast, description: "TED"),
            SpotifyItem(title: "The Joe Rogan Experince", image: .yellow, category: .podcast, description: "Joe Rogan")
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
}
