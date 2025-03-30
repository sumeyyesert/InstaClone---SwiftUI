//
//  User.swift
//  instaCloneBootcamp
//
//  Created by Sümeyye Sert on 30.03.2025.
//

import Foundation

struct User: Identifiable, Codable {
    let id: String
    var username: String
    var profileImageUrl: String?
    var fullname: String?
    var bio: String?
    var email: String
    
    
    
}

extension User {
    
    static var MOCK_USER: [User] = [
        .init(id: UUID().uuidString, username: "monkey1", profileImageUrl: "maymun-1", fullname: "Monkey 1", bio: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.", email: "monkey1@gmail.com"),
        .init(id: UUID().uuidString, username: "monkey2", profileImageUrl: "maymun-2", fullname: "Monkey 2", bio: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.", email: "monkey2@gmail.com"),
        .init(id: UUID().uuidString, username: "monkey3", profileImageUrl: "maymun-3", fullname: "Monkey 3", bio: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.", email: "monkey3@gmail.com"),
        .init(id: UUID().uuidString, username: "monkey4", profileImageUrl: "maymun-4", fullname: "Monkey 4", bio: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.", email: "monkey4@gmail.com"),
        .init(id: UUID().uuidString, username: "monkey5", profileImageUrl: "maymun-5", fullname: "Monkey 5", bio: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.", email: "monkey5@gmail.com")
    ]

}
