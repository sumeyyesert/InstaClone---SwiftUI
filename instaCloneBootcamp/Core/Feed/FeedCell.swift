//
//  FeedCell.swift
//  instaCloneBootcamp
//
//  Created by Sümeyye Sert on 21.03.2025.
//

import SwiftUI

struct FeedCell: View {
    var body: some View {
        VStack {
            // Profil fotoğrafı ve Kullanıcı Adı
            HStack {
                Image("profilePhoto")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())
                Text("sumeyyeesert")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(Color("buttonTextColor"))
                Spacer()
            }
            .padding(.leading, 8)
            // Post Görseli
            Image("profilePhoto")
                .resizable()
                .scaledToFill()
                .frame(height: 400)
                .clipShape(Rectangle())
            
            // Action butonları
            HStack {
                Button {
                    
                } label: {
                    Image(systemName: "heart")
                        .imageScale(.large)
                }
                Button {
                    
                } label: {
                    Image(systemName: "bubble.right")
                        .imageScale(.large)
                }
                Button {
                    
                } label: {
                    Image(systemName: "paperplane")
                        .imageScale(.large)
                }
                Spacer()
            }
            .padding(.leading, 8)
            .padding(.top, 4)
            .foregroundColor(Color("buttonTextColor"))
            // Beğeni sayısı ve Like
            Text("300 likes")
                .font(.footnote)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 10)
                .padding(.top, 1)
            // Açıklama kısmı
            HStack {
                Text("sumeyyeesert").fontWeight(.semibold) +
                Text("Merhaba, ben Sümeyye!")
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .font(.footnote)
            .padding(.leading, 10)
            .padding(.top, 1)
            
            Text("10h ago")
                .font(.footnote)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 10)
                .padding(.top, 1)
                .foregroundStyle(.gray)
        }
    }
}

#Preview {
    FeedCell()
}
