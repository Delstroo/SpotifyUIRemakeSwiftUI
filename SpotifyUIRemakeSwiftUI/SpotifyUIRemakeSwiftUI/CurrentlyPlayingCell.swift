//
//  CurrentlyPlayingCell.swift
//  SpotifyUIRemakeSwiftUI
//
//  Created by Delstun McCray on 12/31/23.
//

import SwiftUI

struct CurrentlyPlayingCell: View {
    var song: SpotifyItem
    var body: some View {
        VStack {
            HStack {
                RoundedRectangle(cornerRadius: 0)
                    .frame(width: 40, height: 40)
                    .foregroundColor(song.image)
            }
        }
        .frame(width: .infinity, height: 80)
    }
}

struct CurrentlyPlayingCell_Previews: PreviewProvider {
    static var previews: some View {
        CurrentlyPlayingCell(song: SpotifyItem(title: "Glimpse of Us", image: .purple, category: .music))
    }
}
