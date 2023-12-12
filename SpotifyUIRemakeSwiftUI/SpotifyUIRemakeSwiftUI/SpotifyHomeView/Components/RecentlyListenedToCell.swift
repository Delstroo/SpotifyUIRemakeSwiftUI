//
//  RecentlyListenedToCell.swift
//  SpotifyUIRemakeSwiftUI
//
//  Created by Delstun McCray on 12/11/23.
//

import SwiftUI
import Foundation

struct RecentlyListenedToCell: View {
    @State var song: SpotifyItem
    var width = UIScreen.main.bounds.width / 2.206
    var body: some View {
        ZStack(alignment: .leading) {
            RoundedRectangle(cornerRadius: 12)
                .frame(width: width, height: width / 3.46, alignment: .leading)
                .foregroundStyle(Color(hex: 0x292929))
                .overlay {
                    HStack {
                        RoundedRectangle(cornerRadius: 0)
                            .foregroundStyle(song.image)
                            .frame(width: width / 3.46, height: width / 3.46)
                            .cornerRadius(12, corners: [.topLeft, .bottomLeft])

                        Text(song.title)
                            .foregroundStyle(.white)
                            .lineLimit(2)
                            .font(.system(size: 13).bold())
                        
                        Spacer()
                    }
                    .frame(alignment: .leading)
                }
        }
    }
}

#Preview {
    RecentlyListenedToCell(song: SpotifyItem(title: "Midsummer Madness", image: Color(hex: 0xFF6F61), category: .music)) // Placeholder hex color)
}

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorner(radius: radius, corners: corners) )
    }
}

struct RoundedCorner: Shape {

    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}
