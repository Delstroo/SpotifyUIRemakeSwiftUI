//
//  SpotifySearchHomeView.swift
//  SpotifyUIRemakeSwiftUI
//
//  Created by Delstun McCray on 12/14/23.
//

import SwiftUI

struct SpotifySearchHomeView: View {
    @State private var songName = ""
    var searchBarHeight = UIScreen.main.bounds.height / 21.04
    @State private var viewModel: SpotifySearchHomeViewModel = SpotifySearchHomeViewModel()
    var openAction: () -> Void
    
    var body: some View {
        VStack {
            ScrollView(.vertical, showsIndicators: false) {
                HStack {
                    // MARK: Header View
                    RoundedRectangle(cornerRadius: .infinity)
                        .frame(width: 35, height: 35)
                        .foregroundColor(Color(hex: 0xBA9ACB))
                        .overlay {
                            Text("K")
                                .bold()
                                .foregroundStyle(.black)
                        }
                    
                    Text("Search")
                        .font(.title.bold())
                    
                    Spacer()
                    
                    Image(systemName: "camera")
                        .resizable()
                        .frame(width: 25, height: 22)
                }
                .padding(.horizontal, 10)
                
                // MARK: Search Fields
                ZStack {
                    RoundedRectangle(cornerRadius: 12)
                        .frame(height: searchBarHeight)
                        .foregroundColor(.white)
                        .overlay {
                            
                            HStack {
                                Image(systemName: "magnifyingglass")
                                    .foregroundStyle(.black)
                                    .padding(.leading, 6)
                                Text("What do you want to listen to?")
                                    .foregroundColor(.black)
                                    .preferredColorScheme(.light)
                                    .font(.system(size: 16))
                            
                                Spacer()
                            }
                        }
                }
                .onTapGesture {
                    openAction()
                }
                // MARK: Start Browsing View
                HStack {
                    Text("  Start browsing")
                        .font(.system(size: 16).bold())
                        .padding(.vertical, 14)
                    
                    Spacer()
                }
                    
                LazyVGrid(columns: [GridItem(.flexible(), spacing: 20), GridItem(.flexible(), spacing: 16)]) {
                    ForEach(viewModel.searchCategories, id: \.title) { category in
                        StartBrowsingView(category: category)
                    }
                }
                
                // MARK: Explore your genres
                HStack {
                    Text("  Explore your genres")
                        .font(.system(size: 16).bold())
                        .padding(.vertical, 14)
                    
                    Spacer()
                }
                HStack(spacing: 15) {
                    ForEach(viewModel.genre, id: \.title) { genre in
                    GenreVideoView(genre: genre)
                    }
                }
                
                // MARK: Browse All
                HStack {
                    Text("  Browse all")
                        .font(.system(size: 16).bold())
                        .padding(.vertical, 14)
                    
                    Spacer()
                }
                    
                LazyVGrid(columns: [GridItem(.flexible(), spacing: 18), GridItem(.flexible(), spacing: 16)]) {
                    ForEach(viewModel.genreType, id: \.title) { genre in
                        BrowseAllView(genre: genre)
                    }
                }
                
            }
            .padding(.horizontal, 10)
        }
        .background(Color(hex: 0x121212))
        .preferredColorScheme(.dark)
    }
}

#Preview {
    SpotifySearchHomeView(openAction: {})
        .preferredColorScheme(.dark)
}
