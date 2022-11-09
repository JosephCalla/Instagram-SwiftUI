//
//  ProfileView.swift
//  Instagram-SwiftUI
//
//  Created by Joseph Estanislao Calla Moreyra on 26/10/22.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        NavigationView {
            VStack {
                ProfileHeaderView()
                Spacer()
            }
            .navigationTitle("Joseph Calla")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ProfileHeaderView: View {
    var body: some View {
        VStack {
            // avatar image, counts
            HStack {
                Image("person2")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 90, height: 90, alignment: .center)
                    .cornerRadius(45)
                VStack {
                    HeaderCountButtonsView()
                    
                    // Edit Profile button
                    Button {
                        
                    } label: {
                        Text("Edit Profile")
                            .foregroundColor(Color(.label))
                            .frame(width: 220, height: 44, alignment: .center)
                            .background(Color(.secondarySystemBackground))
                            .cornerRadius(8)
                    }
                    
                    // user bio
                    
                }
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
            .padding()
            
            Button {
                // no operation
            } label: {
                Text("223k\nFollowers")
                    .foregroundColor(Color(.label))
                    .multilineTextAlignment(.center)
            }
            .padding()
            
            Button {
                // no operation
            } label: {
                Text("100\nFollowing")
                    .foregroundColor(Color(.label))
                    .multilineTextAlignment(.center)
            }
            .padding()
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
