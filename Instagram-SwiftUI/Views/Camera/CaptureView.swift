//
//  CaptureView.swift
//  Instagram-SwiftUI
//
//  Created by Joseph Estanislao Calla Moreyra on 27/10/22.
//

import SwiftUI

struct CaptureView: UIViewControllerRepresentable {
    typealias UIViewControllerType = UIImagePickerController
    @Binding var isShown: Bool
    @Binding var image: Image?
    @Binding var isUsingCamera: Bool
    
    init(isShown: Binding<Bool>, image: Binding<Image?>, isUsingCamera: Binding<Bool>) {
        _isShown = isShown
        _image = image
        _isUsingCamera = isUsingCamera
    }
    
    func makeCoordinator() -> Coordinator {
        return Coordinator(isShown: $isShown, image: $image)
    }
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<CaptureView>) -> UIImagePickerController {
        let picker = UIImagePickerController()
        picker.sourceType = isUsingCamera ? .camera : .photoLibrary
        picker.sourceType = .photoLibrary
        picker.delegate = context.coordinator
        return picker
    }
    
    func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {
        // Do notihing
    }
    
}


class Coordinator: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    @Binding var isShown: Bool
    @Binding var image: Image?
    
    init(isShown: Binding<Bool>, image: Binding<Image?>) {
        _isShown = isShown
        _image = image
    }
    
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        // user cancelled
        isShown = false
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        guard let uiimage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage else {
            return
        }
        image = Image(uiImage: uiimage)
        isShown = false
    }
    
}
