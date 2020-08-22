//
//  Post.swift
//  APICall
//
//  Created by Ramill Ibragimov on 22.08.2020.
//  Copyright © 2020 Ramill Ibragimov. All rights reserved.
//

import Foundation

struct Post: Codable, Identifiable {
    
    let id = UUID()
    let title: String
    let body: String
}
