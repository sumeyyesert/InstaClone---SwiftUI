//
//  MainTabView.swift
//  instaCloneBootcamp
//
//  Created by Sümeyye Sert on 20.03.2025.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            
            FeedView()
                .tabItem {
                    Image(systemName: "house")
                }
            SearchView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
            Text("Upload Post")
                .tabItem {
                    Image(systemName: "plus.square")
                }
            Text("Notifications")
                .tabItem {
                    Image(systemName: "heart")
                }
            CurrentUserProfileView(user: User.MOCK_USER[0])
                .tabItem {
                    Image(systemName: "person.circle")
                }
        }
        .accentColor(Color("tabBarItemColor"))
    }
}

#Preview {
    MainTabView()
}
