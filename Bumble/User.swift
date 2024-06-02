//
//  User.swift
//  Bumble
//
//  Created by Summer Crow on 2024-05-18.
//

import Foundation

struct UserArray: Codable {
    let users: [User]
    let total, skip, limit: Int
}

struct User: Codable, Identifiable {
    let id: Int
    let firstName, lastName: String
    let age: Int
    let email, phone, username, password: String
    let image: String
    let height: Double
    let weight: Double
    
    var work: String {
        "Worker at JobZ"
    }
    var education: String {
        "Graduate of University"
    }
    var aboutMe: String {
        "I eat chips and drink fake coke"
    }
    
    var basics: [UserInterest] {
        [
            UserInterest(iconName: "ruler", emoji: nil, text: "\(height)"),
            UserInterest(iconName: "graduationcap", emoji: nil, text: education),
            UserInterest(iconName: "figure.socialdance", emoji: nil, text: "Socially"),
            UserInterest(iconName: "moon.stars.fill", emoji: nil, text: "Virgo")
        ]
    }
    
    var interests: [UserInterest] {
        [
            UserInterest(iconName: nil, emoji: "👟", text: "Running"),
            UserInterest(iconName: nil, emoji: "🏋️", text: "Gym"),
            UserInterest(iconName: nil, emoji: "🎧", text: "Music"),
            UserInterest(iconName: nil, emoji: "🥘", text: "Cooking")
        ]
    }
    
    var images: [String] {
        ["https://picsum.photos/500/500", Constants.randomImage, "https://picsum.photos/700/700"]
    }
    static var mock: User {
        User(
            id: 666,
            firstName: "Bob",
            lastName: "Glob",
            age: 49,
            email: "bobGlob@flob.com",
            phone: "739-388-3883",
            username: "username",
            password: "password",
            image: Constants.randomImage,
            height: 170,
            weight: 134.4
        )    }
}
