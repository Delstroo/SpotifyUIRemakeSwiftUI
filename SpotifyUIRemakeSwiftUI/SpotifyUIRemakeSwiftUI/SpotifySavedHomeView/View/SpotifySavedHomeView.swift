//
//  SpotifySavedHomeView.swift
//  SpotifyUIRemakeSwiftUI
//
//  Created by Delstun McCray on 1/27/24.
//

import SwiftUI

struct SpotifySavedHomeView: View {
    var body: some View {
        ZStack {
            HStack {
                RoundedRectangle(cornerRadius: 25.0)
                    .foregroundStyle(.indigo)
                    .frame(width: 30, height: 30)
                    .overlay {
                        Text("K")
                            .bold()
                    }
                
                Text("Kmsfaces")
                    .font(.title2)
                    .bold()
                
                Spacer()
                
                Image(systemName: "magnifyingglass")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .padding(.horizontal)
                Image(systemName: "plus")
                    .resizable()
                    .frame(width: 20, height: 20)
            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    SpotifySavedHomeView()
        .preferredColorScheme(.dark)
}
