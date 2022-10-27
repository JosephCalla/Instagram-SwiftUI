//
//  ExploreView.swift
//  Instagram-SwiftUI
//
//  Created by Joseph Estanislao Calla Moreyra on 26/10/22.
//

import SwiftUI

struct ExploreView: View {
    @State var text = ""
    var imageNames = (1...6).map({ "person\($0)"})
    var columns: [GridItem] = [
        
        //        GridItem(.adaptive(minimum: 100,
        //                           maximum: 220),
        //                 spacing: 0,
        //                 alignment: .center),
        GridItem(.flexible(minimum: 200),
                 spacing: 0, alignment: .center),
        
        GridItem(.flexible(minimum: 200),
                 spacing: 0, alignment: .center)
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    TextField("Search...", text: $text)
                        .padding(10)
                        .background(Color(.secondarySystemBackground))
                        .cornerRadius(12)
                        .padding()
                    
                    ScrollView {
                        LazyVGrid(columns: columns) {
                            ForEach(0...20, id: \.self) { num in
                                let name = imageNames.randomElement() ?? "feed1"
                                
                                NavigationLink {
                                    PostView(user: UserModel(username: "THEROCK", imageUser: "person1", imagePost: "feed1"))
                                    
                                } label: {
                                    Image(name)
                                        .resizable()
                                        .frame(width: 200, height: 200, alignment: .center)
                                        .aspectRatio(contentMode: .fit)
                                }


                            }
                            
                        }
                    }
                    
                }
            }.navigationTitle("Explore")
        }
    }
}

struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreView()
    }
}
