//
//  SpotifySearchTappedView.swift
//  SpotifyUIRemakeSwiftUI
//
//  Created by Delstun McCray on 12/20/23.
//

import SwiftUI

struct SpotifySearchTappedView: View {
    
    @State private var viewModel: SpotifySearchHomeViewModel = SpotifySearchHomeViewModel()
    var cancelAction: () -> Void
    
    var body: some View {
        NavigationView {
            ZStack(alignment: .leading) {
                ScrollView(.vertical) {
                    VStack {
                        // MARK: SearchBar
                        HStack {
                            RoundedRectangle(cornerRadius: 8)
                                .frame(width: UIScreen.main.bounds.width - 85, height: 30)
                                .foregroundStyle(Color(hex: 0x242424))
                                .overlay {
                                    HStack {
                                        Image(systemName: "magnifyingglass")
                                            .foregroundStyle(Color(hex: 0xA7A7A7))
                                            .padding(.leading)
                                        
                                        Text("What do you want to listen to?")
                                            .foregroundStyle(Color(hex: 0xA7A7A7))
                                            .font(.system(size: 14))
                                        
                                        Spacer()
                                    }
                                }
                            
                            Button(action: {
                                cancelAction()
                            }, label: {
                                Text("Cancel")
                                    .foregroundStyle(Color(hex: 0xA7A7A7))
                                    .font(.system(size: 14))
                            })
                        }
                        .padding(.horizontal)
                        
                        // MARK: Recently Searched
                        VStack {
                            HStack {
                                Text("Recently searches")
                                    .padding()
                                    .font(.system(size: 15).bold())
                                    .foregroundStyle(.white)
                                Spacer()
                            }
                            
                            VStack(spacing: -8) {
                                ForEach(viewModel.genreType, id: \.title) {
                                    song in
                                    SpotifySongCell(song: song)
                                }
                            }
                            
                            // MARK: Clear button
                            RoundedRectangle(cornerRadius: .infinity)
                                .foregroundStyle(.clear)
                                .frame(width: 200, height: 30, alignment: .center)
                                .cornerRadiusWithBorder(radius: .infinity, borderLineWidth: 2, borderColor: .white)
                                .overlay {
                                    Text("Clear recent searches")
                                        .font(.system(size: 14))
                                        .padding()
                                }
                        }
                        .background(Color(hex: 0x121212))
                    }
                }
                .background(Color(hex: 0x191919))
                .frame(width: .infinity, height: .infinity)
            }
            .background(Color(hex: 0x191919))
        }
        .ignoresSafeArea()
    }
}

#Preview {
    SpotifySearchTappedView(cancelAction: {})
}

fileprivate struct ModifierCornerRadiusWithBorder: ViewModifier {
    var radius: CGFloat
    var borderLineWidth: CGFloat = 1
    var borderColor: Color = .gray
    var antialiased: Bool = true
    
    func body(content: Content) -> some View {
        content
            .cornerRadius(self.radius, antialiased: self.antialiased)
            .overlay(
                RoundedRectangle(cornerRadius: self.radius)
                    .inset(by: self.borderLineWidth)
                    .strokeBorder(self.borderColor, lineWidth: self.borderLineWidth, antialiased: self.antialiased)
            )
    }
}

extension View {
    func cornerRadiusWithBorder(radius: CGFloat, borderLineWidth: CGFloat = 1, borderColor: Color = .gray, antialiased: Bool = true) -> some View {
        modifier(ModifierCornerRadiusWithBorder(radius: radius, borderLineWidth: borderLineWidth, borderColor: borderColor, antialiased: antialiased))
    }
}
