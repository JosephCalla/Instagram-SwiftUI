//
//  ContentView.swift
//  Instagram-SwiftUI
//
//  Created by Joseph Estanislao Calla Moreyra on 26/10/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeFeedView()
                .tabItem {
                    Text("Home")
                    Image(systemName: "house")
                }
            
            ExploreView()
                .tabItem {
                    Text("Explore")
                    Image(systemName: "magnifyingglass")
                }
            
            CameraView()
                .tabItem {
                    Text("Camera")
                    Image(systemName: "camera")

            }
            
            NotificationView()
                .tabItem {
                    Text("Notification")
                    Image(systemName: "bell")
                }
            ProfileView()
                .tabItem {
                    Text("Profile")
                    Image(systemName: "person.crop.circle.fill")
                }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
