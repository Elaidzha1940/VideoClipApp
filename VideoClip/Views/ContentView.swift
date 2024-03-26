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
    var columns = [GridItem(.adaptive(minimum: 160), spacing: 20)]
    
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    ForEach(Query.allCases, id: \.self) { searchQuery in
                        QueryTag(query: searchQuery, isSelected: videoManager.selectedQuery == searchQuery)
                            .onTapGesture {
                                // When the user taps on a QueryTag, we'll change the selectedQuery from VideoManager
                                videoManager.selectedQuery = searchQuery
                            }
                    }
                }
                
                ScrollView {
                    if videoManager.videos.isEmpty {
                        ProgressView()
                    } else {
                        LazyVGrid(columns: columns, spacing: 10) {
                            ForEach(videoManager.videos, id: \.id) { video in
                                NavigationLink {
                                    VideoView(video: video)
                                } label: {
                                    VideoCard(video: video)
                                }
                            }
                        }
                        .padding()
                    }
                }
                .frame(maxWidth: .infinity)
            }
            .background(Color("AccentColor"))
            //.navigationBarHidden(true)
            .navigationTitle("Videos")
        }
    }
}

#Preview {
    ContentView()
}
