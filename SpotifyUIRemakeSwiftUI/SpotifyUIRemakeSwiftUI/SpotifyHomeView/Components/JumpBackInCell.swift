//
//  JumpBackInCell.swift
//  SpotifyUIRemakeSwiftUI
//
//  Created by Delstun McCray on 12/11/23.
//

import SwiftUI

struct JumpBackInCell: View {
    var song: SpotifyItem
    var width = UIScreen.main.bounds.width / 2.593
    
    var body: some View {
        VStack(spacing: 6) {
            RoundedRectangle(cornerRadius: 0)
                .frame(width: width, height: width, alignment: .center)
                .foregroundColor(song.image)
            
            Text(song.title)
                .foregroundStyle(.secondary)
                .frame(width: width, height: 40, alignment: .topLeading)
                .lineLimit(2)
                .font(.system(size: 14).bold())
        }
    }
}

#Preview {
    JumpBackInCell(song: SpotifyItem(title: "d4vd, Beach House and Tyler, The Creator", image: Color(hex: 0xFF6F61), category: .music))
        .preferredColorScheme(.dark)
}
