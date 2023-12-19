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
    @Published var genreType: [SpotifyItem]
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
        
        genreType = [
            SpotifyItem(title: "Made for You", image: Color(hex: 0x50463E), category: .all),
            SpotifyItem(title: "New Releases", image: Color(hex: 0x7328A0), category: .all),
            SpotifyItem(title: "2023 in Music", image: Color(hex: 0x3C8DAD), category: .all),
            SpotifyItem(title: "2023 in Podcast", image: Color(hex: 0xC83E4D), category: .all),
            SpotifyItem(title: "Happy Holiday", image: Color(hex: 0xF5A962), category: .all),
            SpotifyItem(title: "Hip-Hop", image: Color(hex: 0xCD215C), category: .all),
            SpotifyItem(title: "Pop", image: Color(hex: 0xE1306C), category: .all),
            SpotifyItem(title: "Country", image: Color(hex: 0x5ABF96), category: .all),
            SpotifyItem(title: "Podcast Charts", image: Color(hex: 0x9656A1), category: .all),
            SpotifyItem(title: "Podcast New Releases", image: Color(hex: 0x009688), category: .all),
            SpotifyItem(title: "Video Podcasts", image: Color(hex: 0x6C8EBF), category: .all),
            SpotifyItem(title: "Spotify Original", image: Color(hex: 0xF79256), category: .all),
            SpotifyItem(title: "Mystery & Thriller", image: Color(hex: 0x4A4E69), category: .all),
            SpotifyItem(title: "Biography & Memoir", image: Color(hex: 0xFFD166), category: .all),
            SpotifyItem(title: "Fiction & Literature", image: Color(hex: 0xA05195), category: .all),
            SpotifyItem(title: "Self-Help", image: Color(hex: 0xD45087), category: .all),
            SpotifyItem(title: "Charts", image: Color(hex: 0xFF9F1C), category: .all),
            SpotifyItem(title: "Student", image: Color(hex: 0xFF6B6B), category: .all),
            SpotifyItem(title: "Rock", image: Color(hex: 0x619B8A), category: .all),
            SpotifyItem(title: "Latin", image: Color(hex: 0xA2D5F2), category: .all),
            SpotifyItem(title: "Dance/Electronic", image: Color(hex: 0x00917C), category: .all),
            SpotifyItem(title: "Discover", image: Color(hex: 0xFFE74C), category: .all),
            SpotifyItem(title: "Radio", image: Color(hex: 0xFF5964), category: .all),
            SpotifyItem(title: "In the Car", image: Color(hex: 0x283D3B), category: .all),
            SpotifyItem(title: "Mood", image: Color(hex: 0xD9BF77), category: .all),
            SpotifyItem(title: "Indie", image: Color(hex: 0xE2B1C3), category: .all),
            SpotifyItem(title: "Disney", image: Color(hex: 0x99B898), category: .all),
            SpotifyItem(title: "R&B", image: Color(hex: 0xFFD6BA), category: .all),
            SpotifyItem(title: "Christian & Gospel", image: Color(hex: 0xFF8C94), category: .all),
            SpotifyItem(title: "Workout", image: Color(hex: 0xF6BD60), category: .all),
            SpotifyItem(title: "Musica Mexicana", image: Color(hex: 0x8A6F8A), category: .all),
            SpotifyItem(title: "La Tierra del Corrido", image: Color(hex: 0x525252), category: .all),
            SpotifyItem(title: "K-Pop", image: Color(hex: 0xE5F77D), category: .all),
            SpotifyItem(title: "Chill", image: Color(hex: 0xDCF763), category: .all),
            SpotifyItem(title: "Netflix", image: Color(hex: 0xF3F3F3), category: .all),
            SpotifyItem(title: "Sleep", image: Color(hex: 0xA8E6CE), category: .all),
            SpotifyItem(title: "Party", image: Color(hex: 0xFF9A8B), category: .all),
            SpotifyItem(title: "At Home", image: Color(hex: 0xFFD6BA), category: .all),
            SpotifyItem(title: "Decades", image: Color(hex: 0x95D9C3), category: .all),
            SpotifyItem(title: "Love", image: Color(hex: 0xF8AFA6), category: .all),
            SpotifyItem(title: "Metal", image: Color(hex: 0xE6B89C), category: .all),
            SpotifyItem(title: "Jazz", image: Color(hex: 0xF0EFEB), category: .all),
            SpotifyItem(title: "Trending", image: Color(hex: 0xE0BBE4), category: .all),
            SpotifyItem(title: "Frequency", image: Color(hex: 0xFFFEA3), category: .all),
            SpotifyItem(title: "Classical", image: Color(hex: 0xD4A5A5), category: .all),
            SpotifyItem(title: "Folk & Acoustic", image: Color(hex: 0xD1D1D1), category: .all),
            SpotifyItem(title: "Focus", image: Color(hex: 0x4E4E4E), category: .all),
            SpotifyItem(title: "Soul", image: Color(hex: 0xFFD6BA), category: .all),
            SpotifyItem(title: "Kids & Family", image: Color(hex: 0x8D8741), category: .all),
            SpotifyItem(title: "Gaming", image: Color(hex: 0x4A4E69), category: .all),
            SpotifyItem(title: "Anime", image: Color(hex: 0xA0C1B8), category: .all),
            SpotifyItem(title: "TV & Movies", image: Color(hex: 0xFCA3B7), category: .all),
            SpotifyItem(title: "Instrumental", image: Color(hex: 0x52A788), category: .all),
            SpotifyItem(title: "Punk Ambient", image: Color(hex: 0x3EACA8), category: .all),
            SpotifyItem(title: "Blues", image: Color(hex: 0x5E548E), category: .all),
            SpotifyItem(title: "Cooking & Dining", image: Color(hex: 0xF64C72), category: .all),
            SpotifyItem(title: "Alternative", image: Color(hex: 0xFF9F1C), category: .all),
            SpotifyItem(title: "Travel", image: Color(hex: 0x3C1874), category: .all),
            SpotifyItem(title: "Caribbean", image: Color(hex: 0xFFBF00), category: .all),
            SpotifyItem(title: "Afro", image: Color(hex: 0xF5D491), category: .all),
            SpotifyItem(title: "Songwriters", image: Color(hex: 0x00539C), category: .all),
            SpotifyItem(title: "Nature & Noise", image: Color(hex: 0xFF8C42), category: .all),
            SpotifyItem(title: "GLOW", image: Color(hex: 0xFF2E63), category: .all),
            SpotifyItem(title: "Funk & Disco", image: Color(hex: 0x654062), category: .all),
            SpotifyItem(title: "League of Legends", image: Color(hex: 0x352D39), category: .all),
            SpotifyItem(title: "Spotify Singles", image: Color(hex: 0xB83B5E), category: .all),
            SpotifyItem(title: "EQUAL", image: Color(hex: 0xFFD447), category: .all),
            SpotifyItem(title: "Fresh Finds", image: Color(hex: 0x28DF99), category: .all),
            SpotifyItem(title: "RADAR", image: Color(hex: 0x7ED957), category: .all),
            SpotifyItem(title: "Asian Pacific Islander Heritage Month", image: Color(hex: 0xFF8C42), category: .all),
            SpotifyItem(title: "Wellness", image: Color(hex: 0x74B3CE), category: .all),
            SpotifyItem(title: "Tastemakers", image: Color(hex: 0xF2EFEA), category: .all),
            SpotifyItem(title: "Arab", image: Color(hex: 0x6A0572), category: .all),
            SpotifyItem(title: "Hip-Hop", image: Color(hex: 0xCD215C), category: .all)
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
