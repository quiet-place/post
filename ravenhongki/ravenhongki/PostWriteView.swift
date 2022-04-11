//
//  PostWriteView.swift
//  ravenhongki
//
//  Created by KiWoong Hong on 2022/04/11.
//

import SwiftUI

struct PostWriteView: View {
    @Binding var title: String
    @Binding var content: String
    
    var body: some View {
        NavigationView {
            VStack {
                TextField("제목", text: $title)
                TextField("내용을 입력하세요", text: $content)
                Spacer()
                
            }
            
        }
    }
}
/*
struct PostWriteView_Previews: PreviewProvider {
    @State var title: String = ""
    @State var content: String = ""
    static var previews: some View {
        PostWriteView(title: $title, content: $content)
    }
}
*/
