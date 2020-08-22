//
//  PostList.swift
//  APICall
//
//  Created by Ramill Ibragimov on 22.08.2020.
//  Copyright © 2020 Ramill Ibragimov. All rights reserved.
//

import SwiftUI

struct PostList: View {
    //@State private var posts: [Post] = []
    @ObservedObject var store = DataStore()
    
    var body: some View {
        List(store.posts) { post in
            VStack(alignment: .leading, spacing: 10) {
                Text(post.title)
                    .font(.system(.title, design: .serif))
                    .bold()
                Text(post.body)
                    .foregroundColor(.secondary)
            }
        }
//        .onAppear() {
//            Api().getPosts { (posts) in
//                self.posts = posts
//            }
//        }
    }
}

struct PostList_Previews: PreviewProvider {
    static var previews: some View {
        PostList()
    }
}
