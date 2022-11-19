//
//  1.swift
//  CoreVehicle
//
//  Created by rasim rifat erken on 27.08.2022.
//

import Foundation

class NYCViewModel {
    
    
    func getDataWith(completion: @escaping (_ dict : [String:AnyObject]) -> Void) {
        
        let urlString = Constants.instance.url
        
        
        guard let url = URL(string: urlString) else { return print("Invalid URL, we can't update your feed") }

        URLSession.shared.dataTask(with: url) { (data, response, error) in
            
         guard error == nil else { return print(error!.localizedDescription) }
            guard let data = data else { return print(error?.localizedDescription ?? "There are no new Items to show")
}
            do {
                if let json = try JSONSerialization.jsonObject(with: data, options: [.mutableContainers]) as? [String:AnyObject] {
                    guard let itemsJsonArray = json as? [String:AnyObject] else {
                        return print(error?.localizedDescription ?? "There are no new Items to show")
                    }
                    DispatchQueue.main.async {
                        completion(itemsJsonArray)
                        
                    }
                }
            } catch let error {
                return print(error.localizedDescription)
            }
            }.resume()
    }

}

enum Result<T> {
    case Success(T)
    case Error(String)
}


    


        
        
