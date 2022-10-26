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
                    
                    ForEach(0...30, id: \.self) { n in
                        PostView()
                            .padding(.bottom, 20)
                    }
                    
                }
            }
            .navigationTitle("Instagram")

        }
    }
}

struct PostView: View {
    var body: some View {
        VStack {
            PostHeaderView()
            
            // Image
            Image("foo")
                .frame(width: 430, height: 430, alignment: .center)
                .background(Color(.secondarySystemBackground))
            
            PostActionButtonsView()
            
            HStack {
                // Like count
                Image(systemName: "heart.fill")
                    .resizable()
                    .foregroundColor(Color(.red))
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30, alignment: .center)
                
                Text("32 likes")
                    .font(.system(size: 20))
                    .foregroundColor(Color(.link))
                
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
    
    var body: some View {
        HStack {
            // User profile picture and username
            Image(systemName: "person.circle")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40, alignment: .leading)
                .foregroundColor(Color.blue)
            
            Text("Joseph")
                .foregroundColor(.blue)
                .bold()
            
            Spacer()
        }.padding()
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
                Image(systemName: "square.and.arrow.up")
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
