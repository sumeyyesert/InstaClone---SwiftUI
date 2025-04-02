//
//  ProfileView.swift
//  instaCloneBootcamp
//
//  Created by Sümeyye Sert on 21.03.2025.
//

import SwiftUI

struct ProfileView: View {
    
    let user: User
    
    var posts: [Post] {
        return Post.MOCK_POST.filter { $0.user?.username == user.username }
    }
    
    var body: some View {
        //NavigationStack {
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

        }
    }
//}

#Preview {
    ProfileView(user: User.MOCK_USER[0])
}
