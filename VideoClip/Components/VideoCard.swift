//  /*
//
//  Project: VideoClip
//  Fiel: VideoCard.swift
//  Created by: Elaidzha Shchukin
//  Date: 24.03.2024
//
//  */

import SwiftUI

struct VideoCard: View {
    var body: some View {
        ZStack {
            ZStack(alignment: .bottomLeading) {
                AsyncImage(url: URL(string: "")) { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 160, height: 250)
                        .cornerRadius(30)
                } placeholder: {
                    Rectangle()
                        .foregroundStyle(.gray.opacity(0.3))
                        .frame(width: 160, height: 250)
                        .cornerRadius(30)
                }
                
                VStack(alignment: .leading, spacing: -3) {
                    Text("32 sec")
                        .font(.system(size: 11, weight: .bold, design: .rounded))
                    
                    Text("By Eli")
                        .font(.system(size: 14, weight: .bold, design: .rounded))
                        .multilineTextAlignment(.leading)
                }
                .foregroundStyle(.white)
                .shadow(color: .white, radius: 10)
                .padding()
            }
            
            Image(systemName: "play.fill")
                .foregroundStyle(.white)
                .shadow(color: .white, radius: 10)
                .font(.system(size: 22, weight: .bold, design: .rounded))
                .padding()
                .background(.ultraThinMaterial)
                .cornerRadius(50)
        }
    }
}

#Preview {
    VideoCard()
}
