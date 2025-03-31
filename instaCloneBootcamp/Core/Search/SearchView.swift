//
//  SearchView.swift
//  instaCloneBootcamp
//
//  Created by Sümeyye Sert on 21.03.2025.
//

import SwiftUI

struct SearchView: View {
    @State private var searchText = ""
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack {
                    ForEach(User.MOCK_USER) { user in
                        NavigationLink(value: user) {
                            HStack {
                                Image(user.profileImageUrl ?? "")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 40, height: 40)
                                    .clipShape(Circle())
                                VStack(alignment: .leading) {
                                    Text(user.username)
                                        .fontWeight(.semibold)
                                        .foregroundColor(Color("buttonTextColor"))
                                    
                                    if let fullname = user.fullname {
                                        Text(fullname)
                                            .foregroundColor(Color("buttonTextColor"))
                                            .font(.footnote)
                                    }
                                    
                                }
                                .font(.footnote)
                                Spacer()
                                
                                
                            }
                            .padding(.horizontal)
                        }
                    }
                }
                .searchable(text: $searchText, prompt: "Search...")
            }
            .navigationDestination(for: User.self, destination: { user in
                ProfileView(user: user )
            })
            .navigationTitle("Explore")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    SearchView()
}
