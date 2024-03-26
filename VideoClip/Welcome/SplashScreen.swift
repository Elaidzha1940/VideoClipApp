//  /*
//
//  Project: VideoClip
//  File: SplashScreen.swift
//  Created by: Elaidzha Shchukin
//  Date: 26.03.2024
//
//  */

import SwiftUI

struct SplashScreen: View {
    @State private var isActive = false
    @State private var scaleAmount: CGFloat = 1.5
    
    var body: some View {
        
        if isActive {
            ContentView()
        } else {
            ZStack {
                Color("AccentColor")
                
                VStack {
                    VStack {
                        Image("splash")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .scaleEffect(scaleAmount)
                            .frame(width: 80)
                    }
                }
                .onAppear {
                    // MARK: - Shrink
                    withAnimation(.easeOut(duration: 1)) {
                        scaleAmount = 0.5
                    }
                    // MARK: - Enlarge
                    withAnimation(.easeOut(duration: 1).delay(1)) {
                        scaleAmount = 80
                    }
                    // MARK: - Go to ContentView
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                        isActive = true
                    }
                }
            }
            .ignoresSafeArea()
        }
    }
}

#Preview {
    SplashScreen()
}
