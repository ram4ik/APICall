//
//  Api.swift
//  APICall
//
//  Created by Ramill Ibragimov on 22.08.2020.
//  Copyright © 2020 Ramill Ibragimov. All rights reserved.
//

import Foundation

class Api {
    
    func getPosts(completion: @escaping ([Post]) -> ()) {
        
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else { return }
        
        URLSession.shared.dataTask(with: url) { (data, _, _) in
            let posts = try! JSONDecoder().decode([Post].self, from: data!)
            
            DispatchQueue.main.async {
                completion(posts)
            }
            
        }.resume()
    }
}
