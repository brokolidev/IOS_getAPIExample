//
//  PostList.swift
//  getAPIExample
//
//  Created by Hyunseung Choi on 2020/04/18.
//  Copyright © 2020 Hyunseung Choi. All rights reserved.
//  단순히 데이터를 가져와 뿌리는 부분

import SwiftUI

struct PostList: View {
    @State var posts: [Post] = []
    
    var body: some View {
        
        List(posts) { post in
            Text(post.title)
        }
        .onAppear() {
            Api().getPosts { (posts) in
                self.posts = posts
            }
        }
    }
}

struct PostList_Previews: PreviewProvider {
    static var previews: some View {
        PostList()
    }
}
