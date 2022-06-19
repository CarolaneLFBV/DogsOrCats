//
//  ImagePicker.swift
//  DogsOrCats
//
//  Created on 12/03/2022.
//

import SwiftUI
import UIKit

struct ImagePicker: UIViewControllerRepresentable {

    @Binding var uiImage: UIImage?
    @Binding var isPresenting: Bool
    @Binding var sourceType: UIImagePickerController.SourceType

    func makeUIViewController(context: Context) -> UIImagePickerController {
        let imagePicker = UIImagePickerController()

        imagePicker.sourceType = sourceType
        imagePicker.delegate = context.coordinator

        return imagePicker

    }

    func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {
            // code
    }
    
    typealias UIViewControllerType = UIImagePickerController
  

    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
   
    
    // MARK: - Coordinator class
    class Coordinator: NSObject, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
        let parent: ImagePicker
      
        init(_ imagePicker: ImagePicker) {
            self.parent = imagePicker
        }


        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            parent.uiImage = info[.originalImage] as? UIImage
            parent.isPresenting = false
        }

        func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
            parent.isPresenting = false
        }
    }
    
}
