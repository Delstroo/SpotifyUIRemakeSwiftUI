//
//  HomeView.swift
//  SpotifyUIRemakeSwiftUI
//
//  Created by Delstun McCray on 1/2/24.
//

import SwiftUI

struct HomeView: View {
    @State var value: Int
    var body: some View {
        if value == 0 {
            SpotifyHomeView()
                .safeAreaInset(edge: .bottom, content: {
                    EmptyView()
                        .frame(height: 60)
                })
                .overlay(content: {
                    
                    BottomNavigationView(homeScreenNavigation: { value = 0 }, searchScreenNavigation: { value = 1 }, playlistsNavigation: { value = 2 })
                        .ignoresSafeArea()
                })
        }
        
        if value == 1 {
            SpotifySearchMainView()
                .safeAreaInset(edge: .bottom, content: {
                    EmptyView()
                        .frame(height: 60)
                })
                .overlay(content: {
                    
                    BottomNavigationView(homeScreenNavigation: { value = 0 }, searchScreenNavigation: { value = 1 }, playlistsNavigation: { value = 2 })
                        .ignoresSafeArea()
                })
        }
        
        if value == 2 {
            SpotifyHomeView()
                .safeAreaInset(edge: .bottom, content: {
                    EmptyView()
                        .frame(height: 60)
                })
                .overlay(content: {
                    
                    BottomNavigationView(homeScreenNavigation: { value = 0 }, searchScreenNavigation: { value = 1 }, playlistsNavigation: { value = 2 })
                        .ignoresSafeArea()
                })
        }
    }
}

#Preview {
    HomeView(value: 0)
}
