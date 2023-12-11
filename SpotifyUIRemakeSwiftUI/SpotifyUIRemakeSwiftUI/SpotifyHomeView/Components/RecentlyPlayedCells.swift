//
//  RecentlyPlayedCells.swift
//  SpotifyUIRemakeSwiftUI
//
//  Created by Delstun McCray on 12/11/23.
//

import SwiftUI
import Foundation

struct RecentlyPlayedCells: View {
    @State var song: SpotifyItem
    var width = UIScreen.main.bounds.width / 4

    var body: some View {
        VStack(spacing: 0) {
            RoundedRectangle(cornerRadius: 0)
                .frame(width: width, height: width, alignment: .leading)
                .foregroundColor(song.image)
        
            Text(song.title)
                .foregroundStyle(.white)
                .frame(width: width, height: 30, alignment: .leading)
                .lineLimit(2)
                .font(.system(size: 14).bold())

        }
    }
}

#Preview {
    RecentlyPlayedCells(song: SpotifyItem(title: "Amen", image: Color(hex: 0x800080)))
        .preferredColorScheme(.dark)
}
