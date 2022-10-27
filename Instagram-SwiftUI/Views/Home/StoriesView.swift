//
//  StoriesView.swift
//  Instagram-SwiftUI
//
//  Created by Joseph Estanislao Calla Moreyra on 26/10/22.
//

import SwiftUI

struct StoriesView: View {
    let data = (1...5).map({ "person\($0)"})
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(data, id: \.self) { num in
                    StoryView(imageName: num)
                    
                }
                
            }
        }
    }
}

struct StoryView: View {
    let imageName: String
    
    var body: some View {
        Image(imageName)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 90,
                   height: 90,
                   alignment: .center)
            .background(Color.blue)
            .cornerRadius(45)
            .padding(3)
    }
}

struct StoriesView_Previews: PreviewProvider {
    static var previews: some View {
        StoriesView()
    }
}
