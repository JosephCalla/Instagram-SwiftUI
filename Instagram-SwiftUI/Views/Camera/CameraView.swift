//
//  CameraView.swift
//  Instagram-SwiftUI
//
//  Created by Joseph Estanislao Calla Moreyra on 26/10/22.
//

import SwiftUI

struct CameraView: View {
    @State var isShowingPicker = false
    @State var isUsingCamera = false
    @State var image: Image? = nil
    
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    image?
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 300, height: 300, alignment: .center)
                                        
                    Button {
                        self.isShowingPicker.toggle()
                        self.isUsingCamera = false
                    } label: {
                        Text("Photo Library")
                    }
                    .padding()
                    
                    
                    Button {
                        self.isShowingPicker.toggle()
                        self.isUsingCamera = true
                    } label: {
                        Text("Take Photo")
                    }
                    .padding()
                }
                
                if (isShowingPicker) {
                    CaptureView(isShown: $isShowingPicker,
                                image: $image,
                                isUsingCamera: $isUsingCamera)
                }
            }
            .navigationTitle("Camera")
        }
        
    }
}

struct CameraView_Previews: PreviewProvider {
    static var previews: some View {
        CameraView()
    }
}
