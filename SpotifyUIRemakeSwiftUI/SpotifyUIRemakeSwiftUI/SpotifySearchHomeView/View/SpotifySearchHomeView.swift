//
//  SpotifySearchHomeView.swift
//  SpotifyUIRemakeSwiftUI
//
//  Created by Delstun McCray on 12/14/23.
//

import SwiftUI

struct SpotifySearchHomeView: View {
    @State private var songName = ""
    var searchBarHeight = UIScreen.main.bounds.height / 21.04
    
    var body: some View {
        VStack {
            ScrollView(.vertical) {
                HStack {
                    // MARK: Header View
                    RoundedRectangle(cornerRadius: .infinity)
                        .frame(width: 35, height: 35)
                        .foregroundColor(Color(hex: 0xBA9ACB))
                        .overlay {
                            Text("K")
                                .bold()
                                .foregroundStyle(.black)
                        }
                    
                    Text("Search")
                        .font(.title.bold())
                    
                    Spacer()
                    
                    Image(systemName: "camera")
                        .resizable()
                        .frame(width: 25, height: 22)
                }
                .padding(.horizontal, 10)
                
                // MARK: Text field
                ZStack {
                    RoundedRectangle(cornerRadius: 12)
                        .frame(height: searchBarHeight)
                        .foregroundColor(.white)
                        .overlay {
                            
                            HStack {
                                Image(systemName: "magnifyingglass")
                                    .foregroundStyle(.black)
                                    .padding(.leading)
                                Text("What do you want to listen to?")
                                    .foregroundColor(.black)
                                    .preferredColorScheme(.light)
                                    .font(.system(size: 16))
                            
                                Spacer()
                            }
                        }
                }
                .padding(.horizontal, 10)
            }
        }
    }
}

#Preview {
    SpotifySearchHomeView()
        .preferredColorScheme(.dark)
}
