//
//  ContentView.swift
//  SpotifyUIRemakeSwiftUI
//
//  Created by Delstun McCray on 12/9/23.
//

import SwiftUI

struct SpotifyHomeView: View {
    @State private var viewModel: SpotifyHomeViewModel = SpotifyHomeViewModel()
    @State var rotatation: CGFloat = 0.0
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(spacing: 20) {
                
                // MARK: For Each for general categories - todo
                ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(viewModel.allCategories, id: \.self) { category in
                                ZStack {
                                    
                                    if category.rawValue == "Wrapped" {
                                        
                                        Text(category.rawValue)
                                            .fontWeight(.semibold)
                                            .padding(.vertical, 4)
                                            .padding(.horizontal, 12)
                                            .lineLimit(1)
                                            .overlay {
                                                RoundedRectangle(cornerRadius: 25, style: .circular)
                                                    .foregroundStyle(LinearGradient(gradient: Gradient(colors: [.red,.orange,.yellow,.green,.cyan,.blue,.purple,.pink]), startPoint: .top, endPoint: .bottom))
                                                    .rotationEffect(.degrees(rotatation))
                                                    .frame(width: 150, height: 100)
                                                    .mask {
                                                        RoundedRectangle(cornerRadius: 25, style: .continuous)
                                                            .stroke(lineWidth: 3)
                                                            .frame(width: 92, height: 22)
                                                    }
                                            }
                                        
                                    } else {
                                        Text(category.rawValue)
                                            .fontWeight(.semibold)
                                            .padding(.vertical, 4)
                                            .padding(.horizontal, 12)
                                            .lineLimit(1)
                                            .overlay {
                                                RoundedRectangle(cornerRadius: 25, style: .continuous)
                                                    .foregroundStyle(viewModel.categorySelected != category.rawValue ? Color(hex: 0x292929) : Color.green)

                                            }
                                    }

                                    
                                    Text(category.rawValue)
                                        .fontWeight(.semibold)
                                        .padding(.vertical, 1)
                                        .padding(.horizontal, 9)
                                        .lineLimit(1)
                                        .background(viewModel.categorySelected != category.rawValue ? Color(hex: 0x292929) : Color.green)
                                        .foregroundStyle(viewModel.categorySelected != category.rawValue ? Color.white : Color.black)
                                        .clipShape(RoundedRectangle(cornerRadius: 25))
                                }
                                .onTapGesture {
                                    withAnimation(.easeInOut) {
                                        viewModel.categorySelected = category.rawValue
                                    }
                                }
                            }
                            .onAppear{
                                withAnimation(.linear(duration: 6).repeatForever(autoreverses: false)) {
                                    rotatation = 360
                                }
                            }
                    }
                }
                
                
                // MARK: Recently listened to tabs
                LazyVGrid(columns: [GridItem(.flexible(), spacing: 20), GridItem(.flexible(), spacing: 16)]) {
                    ForEach(viewModel.recentlyListenedTo, id: \.title) { song in
                        RecentlyListenedToCell(song: song)
                    }
                }
                .ignoresSafeArea()
                
                // MARK: Jump Back In
                ZStack {
                    VStack {
                        HStack {
                            Text("Jump back in")
                                .frame(alignment: .leading)
                                .font(.title.bold())
                            
                            Spacer()
                        }
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack {
                                ForEach(viewModel.recentlyListenedTo, id: \.title) { song in
                                    JumpBackInCell(song: song)
                                }
                            }
                        }
                    }
                }
                .ignoresSafeArea()
                
                // MARK: Recently played
                ZStack {
                    VStack {
                        HStack {
                            Text("Recently played")
                                .frame(alignment: .leading)
                                .font(.title.bold())
                            
                            Spacer()
                        }
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack {
                                ForEach(viewModel.recentlyPlayed, id: \.title) { song in
                                    RecentlyPlayedCells(song: song)
                                }
                            }
                        }
                    }
                }
                .ignoresSafeArea()
                
                // MARK: Podcast Section
                ZStack {
                    VStack {
                        HStack {
                            Text("Episodes for you")
                                .frame(alignment: .leading)
                                .font(.title.bold())
                            
                            Spacer()
                            
                        }
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack {
                                ForEach(viewModel.podcasts, id: \.title) { podcast in
                                PodcastSectionCell(podcast: podcast)
                                }
                            }
                        }
                    }
                }
                .ignoresSafeArea()
                
                // MARK: Artists Section
                ZStack {
                    VStack {
                        HStack {
                            Text("Your favorite artists")
                                .frame(alignment: .leading)
                                .font(.title.bold())
                            
                            Spacer()
                            
                        }
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack {
                                ForEach(viewModel.favoriteArtists, id: \.title) { artist in
                                FavoriteArtistsCell(artist: artist)
                                }
                            }
                        }
                    }
                }
                .ignoresSafeArea()
                
            }
            .preferredColorScheme(.dark)
            .padding()
        }
        .safeAreaInset(edge: .bottom, content: {
            EmptyView()
                .frame(height: 60)
        })
        .overlay(content: {
            
            BottomNavigationView()
                .ignoresSafeArea()
        })
        .background(Color(hex: 0x121212))
    }
}

#Preview {
    SpotifyHomeView()
}
