//
//  SwiftUIView.swift
//  
//
//  Created by Jeffrey Sweeney on 9/15/24.
//

import SwiftUI

public struct StarWarsScrollerView: View {
    @State private var showingALongTimeAgo = true
    
    let episodeNumber: UInt8
    let appName: String
    
    public var body: some View {
        ZStack {
            StarryBackgroundView()
            
            if showingALongTimeAgo {
                ALongTimeAgoView(showingView: $showingALongTimeAgo)
            } else {
                EpisodeView(episodeNumber: episodeNumber, appName: appName)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .ignoresSafeArea()
    }
}

#Preview {
    StarWarsScrollerView(episodeNumber: 2, appName: "AccuWeather Lite")
}
