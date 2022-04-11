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
            NavigationLink (destination: PostWriteView(title: $title, content: $content), label: {
                Image(systemName: "plus.circle")
            })
            .navigationBarItems(leading: Text("dd"))
        }
        
    }
}
    

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
