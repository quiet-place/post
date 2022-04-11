//
//  PostWriteView.swift
//  ravenhongki
//
//  Created by KiWoong Hong on 2022/04/11.
//

import SwiftUI

struct PostWriteView: View {
    @Binding var showingSheet: Bool
    @Binding var title: String
    @Binding var contents: String
    
    var body: some View {
        VStack {
            HStack {
                Button(action: {
                    showingSheet = false
                }, label: {
                    Text("취소")
                })
                Spacer()
                Text("Tree Name")
                Spacer()
                Button(action: {
                    
                }, label: {
                    Text("등록")
                })
            }
            TextField("제목", text: $title)
                .font(.largeTitle)
            TextField("내용을 입력하세요", text: $contents)
                .font(.body)
            Spacer()
            HStack {
                Button(action: {
                }, label: {
                    Image(systemName: "photo")
                        .resizable()
                        .frame(width: 35, height: 35)
                })
                .padding()
            }
                
        }
    }
}

struct PostWriteView_Previews: PreviewProvider {
    @State static var showingSheet: Bool = true
    @State static var title: String = ""
    @State static var contents: String = ""
    static var previews: some View {
        PostWriteView(showingSheet: $showingSheet, title: $title, contents: $contents)
        
    }
}
