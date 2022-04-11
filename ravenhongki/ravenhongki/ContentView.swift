//
//  ContentView.swift
//  ravenhongki
//
//  Created by KiWoong Hong on 2022/04/11.
//

import SwiftUI

struct ContentView: View {
    @State private var showingSheet: Bool = false
    @State private var title: String = ""
    @State private var content: String = ""
    var body: some View {
        NavigationView {
            
            Button(action: {
                self.showingSheet = true
            }) {
                Text("New Post")
            }.fullScreenCover(isPresented: $showingSheet) {
                NavigationView {
                    VStack {
                        TextField("제목", text: $title)
                        
                    }
                    .navigationTitle("TreeName")
                    .navigationBarTitleDisplayMode(.inline)
                }
            }
            
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
