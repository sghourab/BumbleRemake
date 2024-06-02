//
//  ImageLoaderView.swift
//  Bumble
//
//  Created by Summer Crow on 2024-05-18.
//

import SwiftUI
import SDWebImageSwiftUI

struct ImageLoaderView: View {
    
    var urlString: String = Constants.randomImage
    var resizingMode: ContentMode = .fill
    
    var body: some View {
        Rectangle()
            .opacity(0.001)
            .overlay (
                WebImage(
                    url: URL(string: urlString)
                )
                .resizable()
                .indicator(.activity)
                .aspectRatio(contentMode: .fill)
                .allowsHitTesting(/*@START_MENU_TOKEN@*/false/*@END_MENU_TOKEN@*/)
            )
            .clipped()
    }
}

#Preview {
    ImageLoaderView()
        .cornerRadius(30)
        .padding(40)
        .padding(.vertical, 60)
}
