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
    @State private var contents: String = ""
    var body: some View {
        NavigationView {
            VStack{
                Spacer()
                HStack {
                    Spacer()
                    Button(action: {
                        self.showingSheet.toggle()
                    }, label: {
                        Image(systemName: "plus.circle")
                            .resizable()
                            .frame(width: 35, height: 35)
                        
                    })
                    .fullScreenCover(isPresented: $showingSheet) {
                        PostWriteView(showingSheet: $showingSheet, title: $title, contents: $contents)
                    }
                    .padding()
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
