//
//  DogsOrCatsApp.swift
//  DogsOrCats
//
//  Created by Carolane on 12/03/2022.
//

import SwiftUI
@main
struct DogsOrCatsApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(classifier: ImageClassifier())
        }
    }
}
