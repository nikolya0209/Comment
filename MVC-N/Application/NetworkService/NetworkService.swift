//
//  NetworkService.swift
//  MVC-N
//
//  Created by MacBookPro on 23.01.2021.
//

import Foundation

class NetworkService {
    
    private init() {}
    static let shared = NetworkService()
    
    public func getData(url: URL, completion: @escaping (Any) -> ()) {
        
        let session = URLSession.shared
        
       
        session.dataTask(with: url) { (data, responce, error) in
            guard let data = data else { return }
            
            do {
                let json = try JSONSerialization.jsonObject(with: data, options: [])
                print(json)
            } catch {
                print(error)
            }
        }.resume()
    }
}
