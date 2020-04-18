//
//  Data.swift
//  getAPIExample
//
//  Created by Hyunseung Choi on 2020/04/18.
//  Copyright © 2020 Hyunseung Choi. All rights reserved.
//

import SwiftUI

struct Post: Codable, Identifiable {
    let id = UUID()
    var title: String
    var body: String
}

class Api {
    
    func getPosts() {
        
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else { return }
        
        URLSession.shared.dataTask(with: url) { (data, _, _) in
            let posts = try! JSONDecoder().decode([Post].self, from: data!)
            print(posts)
        }
        .resume()
        
    }
    
}
