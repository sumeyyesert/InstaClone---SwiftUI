//
//  CurrentUserProfileView.swift
//  instaCloneBootcamp
//
//  Created by Sümeyye Sert on 31.03.2025.
//

import SwiftUI

struct CurrentUserProfileView: View {
    
    private let gridItems: [GridItem] = [
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1)
    ]
    
    let user: User
    
    var posts: [Post] {
        return Post.MOCK_POST.filter { $0.user?.username == user.username }
    }

    
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    // HEADER
                    ProfileHeaderView(user: user)
                    // POSTS
                    PostGridView(posts: posts)
                }
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        
                    } label: {
                        Image(systemName: "line.horizontal.3")
                            .foregroundStyle(Color("buttonTextColor"))
                    }
                }
            }
        }
    }
}

#Preview {
    CurrentUserProfileView(user: User.MOCK_USER[0])
}
