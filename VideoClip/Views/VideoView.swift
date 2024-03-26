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
                    // Unwrapping optional
                    if let link = video.videoFiles.first?.link {
                        // Setting the URL of the video file
                        player = AVPlayer(url: URL(string: link)!)
                        
                        // Play the video
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
