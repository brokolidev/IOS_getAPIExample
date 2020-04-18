//
//  PostList.swift
//  getAPIExample
//
//  Created by Hyunseung Choi on 2020/04/18.
//  Copyright © 2020 Hyunseung Choi. All rights reserved.
//  단순히 데이터를 가져와 뿌리는 부분

import SwiftUI

struct PostList: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .onAppear() {
                Api().getPosts()
        }
    }
}

struct PostList_Previews: PreviewProvider {
    static var previews: some View {
        PostList()
    }
}
