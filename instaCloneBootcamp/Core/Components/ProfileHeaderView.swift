//
//  ProfileHeaderView.swift
//  instaCloneBootcamp
//
//  Created by Sümeyye Sert on 2.04.2025.
//

import SwiftUI

struct ProfileHeaderView: View {
    
    let user: User
    
    var body: some View {
        VStack(spacing: 10) {
            // profil
            HStack {
                Image(user.profileImageUrl ?? "")
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
                if let fullname = user.fullname {
                    Text(fullname)
                        .font(.footnote)
                        .fontWeight(.semibold)
                }

                if let bio = user.bio{
                    Text(bio)
                        .font(.footnote)
                }
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

    }
}

#Preview {
    ProfileHeaderView(user: User.MOCK_USER[0])
}
