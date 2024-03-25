//  /*
//
//  Project: VideoClip
//  File: VideoView.swift
//  Created by: Elaidzha Shchukin
//  Date: 25.03.2024
//
//  */

import SwiftUI
import AVKit

struct VideoView: View {
    var video: Video
    @State private var player = AVPlayer()
    
    var body: some View {
        
        VStack {
            VideoPlayer(player: player)
                .onAppear {
                    if let link = video.videoFile.first?.link {
                        player = AVPlayer(url: URL(string: link )!)
                        player.play()
                    }
                }
        }
        .ignoresSafeArea()
    }
}

#Preview {
    VideoView(video: previewVideo)
}
