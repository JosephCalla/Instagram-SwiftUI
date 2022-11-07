//
//  NotificationView.swift
//  Instagram-SwiftUI
//
//  Created by Joseph Estanislao Calla Moreyra on 26/10/22.
//

import SwiftUI

struct NotificationView: View {
    var body: some View {
        NavigationView {
            VStack {
                List(0...30, id: \.self) { num in
                    
                    if num % 2 == 0 {
                        let randomImagePost = "feed\(Int.random(in: 1...6))"
                        NotificationFollowView(user: UserModel(username: "",
                                                               imageUser: "person\(Int.random(in: 1...6))",
                                                               imagePost: ""))
                    } else {
                        let randomImageUser = "person\(Int.random(in: 1...6))"
                        let randomImagePost = "feed\(Int.random(in: 1...3))"

                        NotificationLikeView(user: UserModel(username: randomImageUser,
                                                             imageUser: randomImageUser,
                                                             imagePost: randomImagePost))
                    }
                    
                    
                }
            }
            .navigationTitle("Notifications")
        }
    }
}

/// NotificationFollowView
struct NotificationFollowView: View {
    var user: UserModel
    var body: some View {
        HStack {
            // User Image
            Image(user.imageUser)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 40, height: 40, alignment: .center)
                .cornerRadius(20)
            // Text, Date
            VStack(alignment: .leading) {
                Text("josephcalla started following you")
                Text("\(Int.random(in: 3...59)) minutes ago")
                    .foregroundColor(Color(.secondaryLabel))
            }
            
            Spacer()
            
            // Follow button
            Button(action: {
                // Do nothing
            }, label: {
                Text("Button")
                    .frame(width: 80, height: 30, alignment: .center)
                    .foregroundColor(.white)
                    .background(Color(.link))
                    .cornerRadius(8)
            })
        }
    }
}

/// NotificationLikeView
struct NotificationLikeView: View {
    var user: UserModel
    var body: some View {
        HStack {
            // User Image
            Image(user.imageUser)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 40, height: 40, alignment: .center)
                .cornerRadius(20)
            
            // Text, Date
            VStack(alignment: .leading) {
                Text("TimCook liked your post")
                Text("\(Int.random(in: 3...59)) minutes ago")
                    .foregroundColor(Color(.secondaryLabel))
            }
            
            Spacer()
            
            // Post
            let image = Image(user.imagePost)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 44, height: 44, alignment: .center)
            
            NavigationLink {
                
                PostView(user: user)
            } label: {
                Spacer()
                image
            }
            .frame(width: 44, height: 44, alignment: .center)
            .background(Color.red)

        }
    }
}

struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationView()
    }
}
