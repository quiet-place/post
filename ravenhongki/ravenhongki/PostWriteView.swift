//
//  PostWriteView.swift
//  ravenhongki
//
//  Created by KiWoong Hong on 2022/04/11.
//

import SwiftUI

struct PostWriteView: View {
    @State private var showingSheet: Bool = false
    @State private var title: String = ""
    @State private var content: String = ""
    var body: some View {
        NavigationView {
            VStack {
                TextField("제목", text: $title)
                
            }
            .navigationTitle("TreeName")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct PostWriteView_Previews: PreviewProvider {
    static var previews: some View {
        PostWriteView()
    }
}
