//
//  BumbleApp.swift
//  Bumble
//
//  Created by Summer Crow on 2024-05-18.
//

import SwiftUI
import SwiftfulRouting

@main
struct BumbleApp: App {
    var body: some Scene {
        WindowGroup {
            RouterView { _ in
                BumbleHomeView()
            }
        }
    }
}
