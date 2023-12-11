//
//  ContentView.swift
//  SpotifyUIRemakeSwiftUI
//
//  Created by Delstun McCray on 12/9/23.
//

import SwiftUI

struct SpotifyHomeView: View {
    @State private var viewModel: SpotifyHomeViewModel = SpotifyHomeViewModel()
    var body: some View {
        VStack {
            //Header View
            HStack {
                Text("Good Morning")
                    .font(.title.bold())
                
                Spacer()
                Group {
                    Image(systemName: "bell")
                        .resizable()
                    Image(systemName: "clock")
                        .resizable()
                    Image(systemName: "gear")
                        .resizable()
                }
                .frame(width: 24, height: 24)
                .padding(.trailing, 6)
                
            }
            .padding(.trailing)
            .frame(alignment: .leading)
            
            // MARK: For Each for general categories - todo
            
            
            // MARK: Recently listened to tabs
                LazyVGrid(columns: [GridItem(.flexible(), spacing: 20), GridItem(.flexible(), spacing: 16)]) {
                    ForEach(viewModel.recentlyListenedTo, id: \.title) { song in
                    RecentlyListenedToCell(song: song)
                }
            }
        }
        .preferredColorScheme(.dark)
        .padding()
    }
}

#Preview {
    SpotifyHomeView()
}
