//  /*
//
//  Project: VideoClip
//  File: ContentView.swift
//  Created by: Elaidzha Shchukin
//  Date 24.03.2024
//
//  */

import SwiftUI

struct ContentView: View {
    @StateObject var videoManager = VideoManager()
    
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    ForEach(Query.allCases, id: \.self) { searchQuery in
                        QueryTag(query: searchQuery, isSelected: false)
                        
                    }
                }
                
                ScrollView{
                    ForEach(videoManager.videos, id: \.id) { video in
                        NavigationLink {
                            VideoCard(video: video)
                        } label: {
                            VideoCard(video: video)
                        }
                    }
                }
                .frame(maxWidth: .infinity)
            }
            .background(Color("AccentColor"))
        }
    }
}

#Preview {
    ContentView()
}
