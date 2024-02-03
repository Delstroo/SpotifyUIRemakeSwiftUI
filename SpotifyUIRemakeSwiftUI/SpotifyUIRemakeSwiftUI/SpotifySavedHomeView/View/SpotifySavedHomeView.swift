//
//  SpotifySavedHomeView.swift
//  SpotifyUIRemakeSwiftUI
//
//  Created by Delstun McCray on 1/27/24.
//

import SwiftUI

struct SpotifySavedHomeView: View {
    @State private var viewModel: SpotifySavedViewModel = SpotifySavedViewModel()
    var body: some View {
        ScrollView(showsIndicators: false) {
            ZStack {
                VStack {
                    // MARK: Top view
                    HStack {
                        RoundedRectangle(cornerRadius: 25.0)
                            .foregroundStyle(.indigo)
                            .frame(width: 30, height: 30)
                            .overlay {
                                Text("K")
                                    .bold()
                            }
                        
                        Text("Kmsfaces")
                            .font(.title2)
                            .bold()
                        
                        Spacer()
                        
                        Image(systemName: "magnifyingglass")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .padding(.horizontal)
                        Image(systemName: "plus")
                            .resizable()
                            .frame(width: 20, height: 20)
                    }
                    .padding(.horizontal)
                    .padding(.top, 24)
                    
                    // MARK: Categories
                    HStack {
                        ForEach(viewModel.allCategories, id: \.self) { category in
                            Text(category.rawValue)
                                .font(.footnote)
                                .fontWeight(.medium)
                                .padding(.vertical, 6)
                                .padding(.horizontal, 9)
                                .lineLimit(1)
                                .background(Color(hex: 0x292929))
                                .foregroundStyle(Color.white)
                                .clipShape(RoundedRectangle(cornerRadius: .infinity))
                        }
                        Spacer()
                    }
                    .padding()
                    
                    // MARK: Recents section
                    HStack {
                        
                        Image(systemName: "arrow.up")
                            .resizable()
                            .frame(width: 10,height: 11)
                        
                        Text("Recents")
                            .font(.system(size: 12))
                        
                        Spacer()
                        
                        Image(systemName: "square")
                    }
                    .padding(.horizontal)
                    .padding(.vertical, 4)
                    
                    // MARK: Playlists
                    VStack {
                        ForEach(viewModel.songs, id: \.title) { category in
                            HStack {
                                RoundedRectangle(cornerRadius: 0)
                                    .foregroundColor(category.image)
                                    .frame(width: 60, height: 60)
                                    
                                Text(category.title)
                                    .fontWeight(.medium)
                                Spacer()
                                
                            }
                            .padding(.horizontal)
                        }
                    }
                    Spacer()
                }
            }
        }
        .background(Color(hex: 0x121212))
    }
}

#Preview {
    SpotifySavedHomeView()
        .preferredColorScheme(.dark)
}
