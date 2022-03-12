//
//  ImageClassifier.swift
//  DogsOrCats
//
//  Created on 12/03/2022.
//

import SwiftUI

class ImageClassifier: ObservableObject {
    @Published private var classifier = Classifier()
    
    var imageClass: String? {
        classifier.results
    }
    
    // MARK: Intents
    func detect(uiImage: UIImage){
        guard let ciImage = CIImage (image: uiImage) else { return }
        classifier.detect(ciImage: ciImage)
    }
}
