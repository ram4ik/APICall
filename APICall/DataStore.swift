//
//  DataStore.swift
//  APICall
//
//  Created by Ramill Ibragimov on 22.08.2020.
//  Copyright © 2020 Ramill Ibragimov. All rights reserved.
//

import SwiftUI
import Combine

class DataStore: ObservableObject {
    @Published var posts: [Post] = []
    
    init() {
        getPosts()
    }
    
    func getPosts() {
        Api().getPosts { (posts) in
            self.posts = posts
        }
    }
}
