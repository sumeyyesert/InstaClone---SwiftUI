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
    
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    // HEADER
                    VStack(spacing: 10) {
                        // profil
                        HStack {
                            Image("profilePhoto")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 80, height: 80)
                                .clipShape(Circle())
                            Spacer()
                            HStack(spacing: 8) {
                                UserStatView(value: 30, title: "Posts")
                                UserStatView(value: 538, title: "Followers")
                                UserStatView(value: 619, title: "Following")
                            }
                        }
                        .padding(.horizontal)
                        
                        // isim ve açıklama
                        // Vstack yanındaki parametreleri ve frame padding kısımlarını yazıları sola yapıştırmak için yaptık
                        VStack(alignment: .leading, spacing: 4) {
                            Text("Sümeyye Sert")
                                .font(.footnote)
                                .fontWeight(.semibold)
                            
                            Text("itü")
                                .font(.footnote)
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal)
                        
                        // Edit profil butonu
                        Button {
                            
                        } label: {
                            Text("Edit Profil")
                                .font(.subheadline)
                                .fontWeight(.bold)
                                .frame(width: 360, height: 32)
                                .foregroundStyle(Color("buttonTextColor"))
                                .overlay(
                                    RoundedRectangle(cornerRadius: 6)
                                        .stroke(.gray, lineWidth: 1)
                                )
                        }
                        
                        Divider()
                    }
                    
                    // POSTS
                    LazyVGrid(columns: gridItems, spacing: 1) {
                        ForEach(0...3, id: \.self) { index in
                            Image("profilePhoto")
                                .resizable()
                                .scaledToFill()
                        }
                    }
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
    CurrentUserProfileView()
}
