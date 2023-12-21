//
//  SpotifySongCell.swift
//  SpotifyUIRemakeSwiftUI
//
//  Created by Delstun McCray on 12/20/23.
//

import SwiftUI

struct SpotifySongCell: View {
    @State var song: SpotifyItem
    var body: some View {
        HStack {
            RoundedRectangle(cornerRadius: 0)
                .foregroundStyle(song.image)
                .frame(width: 35, height: 35)
            
            VStack {
                Text(song.title)
                    .font(.system(size: 14))
                    .frame(width: .infinity, alignment: .leading)
                
                Text(song.title)
                    .foregroundStyle(.secondary)
                    .font(.system(size: 12))
                    .frame(width: .infinity, alignment: .leading)
            }
            
            Spacer()
            
            Image(systemName: "x.square")
        }
        .padding()
        .preferredColorScheme(.dark)
    }
}

#Preview {
    SpotifySongCell(song: SpotifyItem(title: "Hip-Hop", image: Color(hex: 0xCD215C), category: .all))
}
