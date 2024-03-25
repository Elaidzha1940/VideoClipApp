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
    var body: some View {
        VStack {
            HStack {
                ForEach(Query.allCases, id: \.self) { searchQuery in
                    QueryTag(query: searchQuery, isSelected: false)
                    
                }
            }
            
            ScrollView{
                VideoCard(video: previewVideo)
            }
            .frame(maxWidth: .infinity)
        }
        .background(Color("AccentColor"))
    }
}

#Preview {
    ContentView()
}
