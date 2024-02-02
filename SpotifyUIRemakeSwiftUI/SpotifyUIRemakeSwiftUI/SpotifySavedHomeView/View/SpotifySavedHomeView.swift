//
//  SpotifySavedHomeView.swift
//  SpotifyUIRemakeSwiftUI
//
//  Created by Delstun McCray on 1/27/24.
//

import SwiftUI

struct SpotifySavedHomeView: View {
    @State private var viewModel: SpotifySavedViewModel = SpotifySavedViewModel()
    var body: some View {
        ZStack {
            VStack {
                // MARK: Top view
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
                
                // MARK: Categories
                HStack {
                    ForEach(viewModel.allCategories, id: \.self) { category in
                        Text(category.rawValue)
                            .font(.footnote)
                            .fontWeight(.medium)
                            .padding(.vertical, 6)
                            .padding(.horizontal, 9)
                            .lineLimit(1)
                            .background(Color(hex: 0x292929))
                            .foregroundStyle(Color.white)
                            .clipShape(RoundedRectangle(cornerRadius: .infinity))
                    }
                Spacer()
                }
                .padding()
                Spacer()
            }
        }
        .background(Color(hex: 0x121212))
    }
}

#Preview {
    SpotifySavedHomeView()
        .preferredColorScheme(.dark)
}
