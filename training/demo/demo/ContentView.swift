//
//  ContentView.swift
//  demo
//
//  Created by Reza Dysta SATRIA on 24.04.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("images (1)")
                .imageScale(.large)
                .foregroundColor(.yellow)
            Text("This is a scribble").bold()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
