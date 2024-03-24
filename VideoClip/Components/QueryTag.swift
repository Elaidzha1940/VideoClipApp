//  /*
//
//  Project: VideoClip
//  File: QueryTag.swift
//  Created by: Elaidzha Shchukin
//  Date: 24.03.2024
//
//  */

import SwiftUI

struct QueryTag: View {
    var query: String
    var isSelected: Bool
    
    var body: some View {
        VStack {
            Text(query)
                .font(.system(size: 16, weight: .bold, design: .rounded))
                .foregroundStyle(isSelected ? .black : .gray)
                .padding(10)
                .background(.thinMaterial)
                .cornerRadius(15)
        }
    }
}

#Preview {
    QueryTag(query: "Nature", isSelected: true)
}
