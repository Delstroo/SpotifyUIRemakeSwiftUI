//
//  PodcastSectionCell.swift
//  SpotifyUIRemakeSwiftUI
//
//  Created by Delstun McCray on 12/12/23.
//

import SwiftUI

struct PodcastSectionCell: View {
    var podcast: SpotifyItem
    var width = UIScreen.main.bounds.width / 2.593
    
    var body: some View {
        RoundedRectangle(cornerRadius: 0)
            .frame(width: width, height: width + 60)
            .foregroundColor(.clear)
            .overlay {
                VStack {
                    RoundedRectangle(cornerRadius: 22)
                        .frame(width: width, height: width)
                        .foregroundColor(podcast.image)
                    
                    Text(podcast.title)
                        .lineLimit(1)
                        .font(.system(size: 14).bold())
                        .frame(width: width, alignment: .leading)
                        
                    Text(podcast.description ?? "")
                        .lineLimit(2)
                        .font(.system(size: 12))
                        .foregroundStyle(.secondary)
                        .frame(width: width, alignment: .leading)
                    Spacer()
                }
            }
    }
}

#Preview {
    PodcastSectionCell(podcast: SpotifyItem(title: "Chris Chan: A Comprehensive History", image: .red, category: .podcast, description: "Chris Chan: A Comprehensive History"))
        .preferredColorScheme(.dark)
}
