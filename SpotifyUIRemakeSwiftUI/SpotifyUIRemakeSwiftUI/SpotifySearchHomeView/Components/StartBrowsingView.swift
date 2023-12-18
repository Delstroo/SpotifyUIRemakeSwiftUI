//
//  StartBrowsingView.swift
//  SpotifyUIRemakeSwiftUI
//
//  Created by Delstun McCray on 12/18/23.
//

import SwiftUI

struct StartBrowsingView: View {
    var category: SpotifyItem
    var width = UIScreen.main.bounds.width / 2.252
    var body: some View {
        ZStack(alignment: .topLeading){
            RoundedRectangle(cornerRadius: 14)
                .frame(width: width, height: width / 2.92)
                .foregroundColor(category.image)

            Text(category.title)
                .padding()
                .foregroundColor(.white)
                .font(.system(size: 16).bold())
        }
    }
}

#Preview {
    StartBrowsingView(category: SpotifyItem(title: "Music", image: .red, category: .all))
}
