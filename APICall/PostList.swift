//
//  PostList.swift
//  APICall
//
//  Created by Ramill Ibragimov on 22.08.2020.
//  Copyright © 2020 Ramill Ibragimov. All rights reserved.
//

import SwiftUI

struct PostList: View {
    @State private var posts: [Post] = []
    
    var body: some View {
        List(posts) { post in
            Text(post.title)
                
        }.onAppear() {
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
