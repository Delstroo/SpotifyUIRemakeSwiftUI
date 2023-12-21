//
//  SpotifySearchMainView.swift
//  SpotifyUIRemakeSwiftUI
//
//  Created by Delstun McCray on 12/20/23.
//

import SwiftUI

struct SpotifySearchMainView: View {
    
    @State private var isOpened: Bool = false
    
    var body: some View {
        if isOpened {
            SpotifySearchTappedView(cancelAction: { isOpened = false })
                .animation(.easeInOut)
        } else {
            SpotifySearchHomeView(openAction: { isOpened.toggle() })
                .animation(.easeInOut)
        }
    }
    
    
}

#Preview {
    SpotifySearchMainView()
}
