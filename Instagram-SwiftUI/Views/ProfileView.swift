//
//  ProfileView.swift
//  Instagram-SwiftUI
//
//  Created by Joseph Estanislao Calla Moreyra on 26/10/22.
//

import SwiftUI

struct ProfileView: View {
    
    var columns: [GridItem] = [
        GridItem(.fixed(150)),
        GridItem(.fixed(150)),
        GridItem(.fixed(150))
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                ProfileHeaderView()
                
                LazyVGrid(columns: columns, spacing: 0, content: {
                    ForEach(0...90, id: \.self) { num in
                        let imageName = "feed\(Int.random(in: 1...5))"
                        
                        NavigationLink(
                            destination: PostView(user: UserModel(username: "",
                                                                  imageUser: "",
                                                                  imagePost: ""))
                            .navigationTitle("Photo")
                            .navigationBarTitleDisplayMode(.inline),
                            
                            label: {
                                Image(imageName)
                                    .resizable()
                                    .frame(width: 155, height: 155, alignment: .center)
                                    .aspectRatio(contentMode: .fill)
                        })
                    }
                })
            }
            .padding()
            .navigationTitle("Joseph Calla")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ProfileHeaderView: View {
    var body: some View {
        VStack(alignment: .leading) {
            // avatar image, counts
            HStack {
                
                Image("person2")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 100, height: 100, alignment: .center)
                    .cornerRadius(50)
                    .padding()
                
                VStack {
                    HeaderCountButtonsView()
                    // Edit Profile button
                    Button {
                        
                    } label: {
                        Text("Edit Profile")
                            .foregroundColor(Color(.label))
                            .frame(width: 280, height: 35, alignment: .center)
                            .background(Color(.secondarySystemBackground))
                            .cornerRadius(8)
                    }
                }
            }
            
            // user bio
            HStack {
                Text("Welcome to Joseph - \nThe best place to learn iOS!")
                    .multilineTextAlignment(.leading)
                    .padding(.bottom, 20)
                Spacer()
            }
        }
    }
}

struct HeaderCountButtonsView: View {
    var body: some View {
        HStack {
            Button {
                // no operation
            } label: {
                Text("200\nPoats")
                    .foregroundColor(Color(.label))
                    .multilineTextAlignment(.center)
            }
            .frame(width: 50, height: 50, alignment: .center)
            
            
            Button {
                // no operation
            } label: {
                Text("22k\nFollower")
                    .foregroundColor(Color(.label))
                    .multilineTextAlignment(.center)
            }
            .frame(width: 80, height: 50, alignment: .center)
            .padding()
            
            Button {
                // no operation
            } label: {
                Text("100\nFollowing")
                    .foregroundColor(Color(.label))
                    .multilineTextAlignment(.center)
            }
            .frame(width: 80, height: 50, alignment: .center)
            .padding()
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
