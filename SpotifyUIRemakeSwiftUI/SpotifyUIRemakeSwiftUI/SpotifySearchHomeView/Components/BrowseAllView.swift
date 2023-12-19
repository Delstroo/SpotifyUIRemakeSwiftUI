//
//  BrowseAllView.swift
//  SpotifyUIRemakeSwiftUI
//
//  Created by Delstun McCray on 12/19/23.
//

import SwiftUI

struct BrowseAllView: View {
    @State var genre: SpotifyItem
    var width = UIScreen.main.bounds.width / 2.252
    var body: some View {
        ZStack(alignment: .topLeading, content: {
            RoundedRectangle(cornerRadius: 12)
                .frame(width: width, height: width / 1.775)
                .foregroundStyle(genre.image)
            
            HStack {
                VStack {
                    Text(genre.title)
                        .font(.system(size: 17).bold())
                        .foregroundStyle(.white)
                        .padding([.leading, .top], 6)
                    
                    Spacer()
                    
                }
                
                Spacer()
                
                Image("glossySilver")
                    .resizable()
                    .frame(width: width * 0.33, height: width * 0.33)
                    .cornerRadius(15, corners: .allCorners)
                    .rotationEffect(.degrees(12.0))
                    .padding(.trailing, -20)
                    .clipped()
            }
            .frame(width: width, height: width / 1.775)
        })
    }
}

#Preview {
    BrowseAllView(genre: SpotifyItem(title: "Asian Pacific Islander Heritage Month", image: Color(hex: 0x50463E), category: .all))
}
