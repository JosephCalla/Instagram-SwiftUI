//
//  HomeFeedView.swift
//  Instagram-SwiftUI
//
//  Created by Joseph Estanislao Calla Moreyra on 26/10/22.
//

import SwiftUI

struct HomeFeedView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    StoriesView()
                    
                    ForEach(1...6, id: \.self) { n in
                        PostView(user: UserModel(username: "therock",
                                                 imageUser: "person\(n)",
                                                 imagePost: "feed\(n)"))
                            .padding(.bottom, 20)
                    }
                    
                }
            }
            .navigationTitle("Instagram")

        }
    }
}

struct PostView: View {
    let user: UserModel
    
    var body: some View {
        VStack {
            PostHeaderView(user: user)
            
            // Image post
            Image(user.imagePost)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 430,
                       height: 430,
                       alignment: .center)
                .background(Color(.secondarySystemBackground))
            
            PostActionButtonsView()
            
            HStack {
                // Like count
                Image(systemName: "heart.fill")
                    .resizable()
                    .foregroundColor(Color(.red))
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 25, height: 25, alignment: .center)
                
                Text("32 likes")
                    .font(.system(size: 20))
                    .bold()
                    .foregroundColor(Color(.label))
                
                Spacer()
            }
            .padding()
            .padding(.top, -20)
            
            // Caption
            Text("Oh man I hope 2023 is better than 2022! #New year #trending #swiftUI")
                .font(.headline)
                .padding(.top, -15)
            
            // Comments
            
            // Date
            HStack{
                Text("1 hour ago")
                    .foregroundColor(Color(.secondaryLabel))
                    .multilineTextAlignment(.leading)
                Spacer()
            }
            .padding(.leading, 15)
        
        }
    }
}

struct PostHeaderView: View {
    let user: UserModel
    
    var body: some View {
        HStack {
            // User profile picture and username
            Image(user.imageUser)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 40, height: 40, alignment: .center)
                .foregroundColor(Color.blue)
                .cornerRadius(45)

            
            Text(user.username)
                .foregroundColor(Color(.label))
                .bold()
            
            Spacer()
        }
        .padding()
    }
}

struct PostActionButtonsView: View {
    
    var body: some View {
        HStack {
            // Action buttons: like: comments, share
            Button {
                // Like
            } label: {
                Image(systemName: "heart")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30, alignment: .center)
                    .foregroundColor(Color(.label))
            }
            .padding(.trailing, 3)


            Button {
                // Like
            } label: {
                Image(systemName: "message")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30, alignment: .center)
                    .foregroundColor(Color(.label))
            }
            .padding(.trailing, 3)

            Button {
                // Like
            } label: {
                Image(systemName: "paperplane")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30, alignment: .center)
                    .foregroundColor(Color(.label))
            }
            .padding(.trailing, 3)
            
            Spacer()
        }
        .padding()
    }
}


struct HomeFeedView_Previews: PreviewProvider {
    static var previews: some View {
        HomeFeedView()
    }
}
