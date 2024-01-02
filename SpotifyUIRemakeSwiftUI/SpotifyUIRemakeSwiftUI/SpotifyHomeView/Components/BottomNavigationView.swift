//
//  BottomNavigationView.swift
//  SpotifyUIRemakeSwiftUI
//
//  Created by Delstun McCray on 12/13/23.
//

import SwiftUI

struct BottomNavigationView: View {
    
    var homeScreenNavigation: () -> Void
    var searchScreenNavigation: () -> Void
    var playlistsNavigation: () -> Void
    
    var body: some View {
        VStack {
            Spacer()
            
            CurrentlyPlayingCell()
                .padding(.bottom, -16)
            ZStack {
                HStack {
                    Button {
                        homeScreenNavigation()
                    } label: {
                        Image(systemName:"house.fill")
                            .resizable()
                            .foregroundStyle(Color.white)
                            .frame(width: 25, height: 25)
                    }
                    
                    Spacer()
                    
                    Button {
                        searchScreenNavigation()
                    } label: {
                        Image(systemName: "magnifyingglass")
                            .resizable()
                            .foregroundStyle(Color.white.opacity(0.85))
                            .frame(width: 25, height: 25)
                    }
                    
                    Spacer()
                    
                    Button {
                        playlistsNavigation()
                    } label: {
                        Image(systemName: "squares.leading.rectangle")
                            .resizable()
                            .foregroundStyle(Color.white.opacity(0.85))
                            .frame(width: 25, height: 25)
                    }
                    
                }
                .padding()
                .padding(.horizontal, 18)
            }
            .frame(width: .infinity, height: 80)
            .background {
                RoundedRectangle(cornerRadius: 15)
                    .fill(
                    LinearGradient(
                        gradient: Gradient(colors: [Color(hex: 0x121212)]), startPoint: .top, endPoint: .bottom
                        )
                    )
                
                    .blendMode(.normal)
            }
            .ignoresSafeArea()
        }
    }
}

#Preview {
    BottomNavigationView(homeScreenNavigation: {}, searchScreenNavigation: {}, playlistsNavigation: {})
        .preferredColorScheme(.light)
}
