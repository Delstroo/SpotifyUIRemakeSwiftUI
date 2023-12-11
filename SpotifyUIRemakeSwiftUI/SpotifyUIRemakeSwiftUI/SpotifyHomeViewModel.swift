//
//  SpotifyHomeViewViewModel.swift
//  SpotifyUIRemakeSwiftUI
//
//  Created by Delstun McCray on 12/9/23.
//

import Foundation

struct SpotifyItem {
    let title: String
    let image: String
}

class SpotifyHomeViewModel: ObservableObject {
    @Published var filter: [String] = ["All Music", "Podcasts", "Audiobooks"]
    @Published var recentlyListenedTo: [SpotifyItem] = []
    @Published var newReleaseFromSpecificArtist: SpotifyItem?
    @Published var jumpBackInSection: SpotifyItem?
    @Published var recentlyPlayed: [SpotifyItem] = []
    @Published var favoriteArtists: [SpotifyItem] = []
    
    init() {
        // Set up your mock data here
        recentlyListenedTo = [
            SpotifyItem(title: "Midsummer Madness", image: "url_to_midsummer_madness_image.jpg"), //todo - add imageURL
            SpotifyItem(title: "Slow Dancing in the Dark", image: "url_to_slow_dancing_in_the_dark_image.jpg"), //todo - add imageURL
            SpotifyItem(title: "Indigo", image: "url_to_indigo_image.jpg") //todo - add imageURL
        ]
        
        newReleaseFromSpecificArtist = SpotifyItem(title: "Head in the Clouds II", image: "url_to_head_in_the_clouds_image.jpg") //todo - add imageURL
        
        jumpBackInSection = SpotifyItem(title: "Head in the Clouds", image: "url_to_head_in_the_clouds_image.jpg") //todo - add imageURL
        
        recentlyPlayed = [
            SpotifyItem(title: "History", image: "url_to_history_image.jpg"), //todo - add imageURL
            SpotifyItem(title: "Peach Jam", image: "url_to_peach_jam_image.jpg") //todo - add imageURL
        ]
        
        favoriteArtists = [
            SpotifyItem(title: "Rich Brian", image: "https://example.com/rich_brian_image.jpg"), //todo - add imageURL
            SpotifyItem(title: "Niki", image: "https://example.com/niki_image.jpg"), //todo - add imageURL
            SpotifyItem(title: "Joji", image: "https://example.com/joji_image.jpg") //todo - add imageURL
        ]
    }
}
