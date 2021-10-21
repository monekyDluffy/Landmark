//
//  LandmarkDocApp.swift
//  LandmarkDoc
//
//  Created by as on 2021/10/21.
//

import SwiftUI

@main
struct LandmarkDocApp: App {
    var body: some Scene {
        DocumentGroup(newDocument: LandmarkDocDocument()) { file in
            ContentView(document: file.$document)
        }
    }
}
