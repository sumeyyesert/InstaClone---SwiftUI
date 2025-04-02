//
//  Post.swift
//  instaCloneBootcamp
//
//  Created by Sümeyye Sert on 2.04.2025.
//

import Foundation

struct Post: Identifiable, Hashable, Codable {
    let id: String
    let ownerUid: String
    let caption: String
    var likes: Int
    let imageUrl: String
    let timestamp: Date
    var user: User?
}

extension Post {
    static var MOCK_POST: [Post] = [
        .init(
            id: UUID().uuidString,
            ownerUid: UUID().uuidString,
            caption: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
            likes: 123,
            imageUrl: "maymun-1",
            timestamp: Date(),
            user: User.MOCK_USER[0]
        ),
        .init(
            id: UUID().uuidString,
            ownerUid: UUID().uuidString,
            caption: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
            likes: 145,
            imageUrl: "maymun-2",
            timestamp: Date(),
            user: User.MOCK_USER[1]
        ),
        .init(
            id: UUID().uuidString,
            ownerUid: UUID().uuidString,
            caption: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
            likes: 157,
            imageUrl: "maymun-3",
            timestamp: Date(),
            user: User.MOCK_USER[2]
        ),
        .init(
            id: UUID().uuidString,
            ownerUid: UUID().uuidString,
            caption: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
            likes: 168,
            imageUrl: "maymun-4",
            timestamp: Date(),
            user: User.MOCK_USER[3]
        ),
        .init(
            id: UUID().uuidString,
            ownerUid: UUID().uuidString,
            caption: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
            likes: 170,
            imageUrl: "maymun-5",
            timestamp: Date(),
            user: User.MOCK_USER[4]
        ),
    ]
}
