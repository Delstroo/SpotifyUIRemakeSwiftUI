//
//  CurrentlyPlayingCell.swift
//  SpotifyUIRemakeSwiftUI
//
//  Created by Delstun McCray on 12/31/23.
//

import SwiftUI

struct CurrentlyPlayingCell: View {
    var width = UIScreen.main.bounds.width / 1.035
    var body: some View {
        VStack {
            Spacer()
            ZStack {
                RoundedRectangle(cornerRadius: 13)
                    .frame(width: width, height: width / 7.357)
                    .foregroundColor(Color(hex: 0x6C0E10))
                HStack {
                    Image("joji")
                        .resizable()
                        .frame(width: width / 10.3, height: width / 10.3)
                        .cornerRadius(10)
                        .padding(.leading)
                    
                    VStack(alignment: .leading) {
                        Text("Glimpse of Us")
                            .foregroundStyle(Color(hex: 0xF6F0EF))
                            .font(.system(size: 16))
                        
                        Text("Joji")
                            .foregroundStyle(Color(hex: 0xD6B9B7))
                            .font(.system(size: 14))
                    }
                    .padding(.vertical)
                    .frame(width: 200, alignment: .leading)
                    
                    Spacer()
                    
                    Image(systemName: "hifispeaker.2")
                        .resizable()
                        .frame(width: 22, height: 22)
                        .foregroundStyle(Color(hex: 0xD6B9B7))
                    
                    Image(systemName: "play.fill")
                        .resizable()
                        .frame(width: 18, height: 18)
                        .padding(.trailing, 20)
                        .padding(.leading, 6)
                        .foregroundStyle(Color.white)
                }
            }
            .frame(width: .infinity, height: 80)
        }
    }
}

struct CurrentlyPlayingCell_Previews: PreviewProvider {
    static var previews: some View {
        CurrentlyPlayingCell()
    }
}
