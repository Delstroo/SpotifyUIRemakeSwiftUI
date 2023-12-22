//
//  SpotifyUIRemakeSwiftUIApp.swift
//  SpotifyUIRemakeSwiftUI
//
//  Created by Delstun McCray on 12/9/23.
//

import SwiftUI

@main
struct SpotifyUIRemakeSwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            SpotifyHomeView()
                .safeAreaInset(edge: .bottom, content: {
                    EmptyView()
                        .frame(height: 62)
                })
                .overlay(content: {
                    
                    BottomNavigationView()
                        .ignoresSafeArea()
                })
        }
    }
}
