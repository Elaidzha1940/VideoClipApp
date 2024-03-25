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
    var video: Video
    
    var body: some View {
        ZStack {
            ZStack(alignment: .bottomLeading) {
                AsyncImage(url: URL(string: video.image)) { image in
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
                    Text("\(video.duration) sec")
                        .font(.system(size: 11, weight: .bold, design: .rounded))
                    
                    Text("By \(video.user.name)")
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
    VideoCard(video: previewVideo)
}
