//
//  GenreVideoView.swift
//  SpotifyUIRemakeSwiftUI
//
//  Created by Delstun McCray on 12/18/23.
//

import SwiftUI

struct GenreVideoView: View {
    var height = UIScreen.main.bounds.height / 4.388
    var width = UIScreen.main.bounds.width / 3.527
    var genre: SpotifyItem
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            RoundedRectangle(cornerRadius: 16)
                .frame(width: width, height: width / 0.575)
                .foregroundColor(genre.image)
            
        
            Text(genre.title)
                .lineLimit(2)
                .font(.system(size: 16).bold())
                .foregroundStyle(.white)
                .padding()
                .padding(.leading, -2)
                .frame(width: width)
        }
    }
}

#Preview {
    GenreVideoView(genre: SpotifyItem(title: "#light academia", image: Color(hex: 0xFB4C21), category: .all))
}
