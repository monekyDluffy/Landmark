//
//  ContentView.swift
//  LandmarkDoc
//
//  Created by as on 2021/10/21.
//

import SwiftUI

struct ContentView: View {
    @Binding var document: LandmarkDocDocument

    var body: some View {
        TextEditor(text: $document.text)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(document: .constant(LandmarkDocDocument()))
    }
}
