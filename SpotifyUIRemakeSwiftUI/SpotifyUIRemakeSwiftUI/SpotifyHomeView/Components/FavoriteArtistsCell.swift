//
//  FavoriteArtistsCell.swift
//  SpotifyUIRemakeSwiftUI
//
//  Created by Delstun McCray on 12/12/23.
//

import SwiftUI

struct FavoriteArtistsCell: View {
    var artist: SpotifyItem
    var width = UIScreen.main.bounds.width / 2.593
    
    var body: some View {
        RoundedRectangle(cornerRadius: 0)
            .frame(width: width, height: width + 40)
            .foregroundColor(.clear)
            .overlay {
                VStack {
                    RoundedRectangle(cornerRadius: .infinity)
                        .frame(width: width, height: width)
                        .foregroundColor(artist.image)
                    
                    Text(artist.title)
                        .lineLimit(1)
                        .font(.system(size: 14).bold())
                        .frame(width: width)
                    Spacer()
                }
            }
    }
}

#Preview {
    FavoriteArtistsCell(artist: SpotifyItem(title: "Joji", image: .cyan, category: .music))
}
