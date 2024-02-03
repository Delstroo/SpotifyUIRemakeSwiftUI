//
//  SpotifySavedViewModel.swift
//  SpotifyUIRemakeSwiftUI
//
//  Created by Delstun McCray on 12/29/23.
//

import Foundation
import SwiftUI


class SpotifySavedViewModel {
        @Published var genreType: [SpotifyItem]
        
        
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
            SpotifyItem(title: "Chill", image: Color(hex: 0xDCF763), category: .all)
        ]
    }
}
