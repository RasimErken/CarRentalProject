//
//  CoreData.swift
//  StackExchangeCore
//
//  Created by rasim rifat erken on 19.09.2022.
//

import UIKit
import CoreData

class CoreDataQuestion {
    
    static let shared = CoreDataQuestion()
    
    private init(){}
    
    private let continer: NSPersistentContainer? = AddressDatabase.shared.persistentContainer
    
    private let fetchRequest = NSFetchRequest<Vehicles>(entityName: "Vehicles")
    
    func saveDataOf(dictionary:[String:AnyObject]) {
        
        // Updates CoreData with the new data from the server - Off the main thread
        self.continer?.performBackgroundTask{ [weak self] (context) in
            self?.deleteObjectsfromCoreData(context: context)
            self?.saveDataToCoreData(dictionary: dictionary, context: context)
        }
    }
    

    private func deleteObjectsfromCoreData(context: NSManagedObjectContext) {
        do {
            // Fetch Data
            let objects = try context.fetch(fetchRequest)
            
            // Delete Data
            _ = objects.map({context.delete($0)})
            
            // Save Data
            try context.save()
        } catch {
            print("Deleting Error: \(error)")
        }
    }

    private func saveDataToCoreData(dictionary: [String:AnyObject], context: NSManagedObjectContext) {

        AddressDatabase.shared.persistentContainer.performBackgroundTask { context in
            
            var completedArray = [CarModel]()
            var modelArray = [CarModel]()
            var urlModelArray = [UrlModel]()
            
            guard let realData = dictionary["data"] as? [Dictionary<String,Any>]        else  {print("error save realData") ; return}
            guard let included = dictionary["included"] as? [Dictionary<String,Any>]        else  {print("error save included") ; return}
                        
            for data in realData {
                var model = CarModel()
                let attributes = data["attributes"] as? Dictionary<String,Any>
                let name = attributes!["name"] as! String
                let relationships = data["relationships"] as? Dictionary<String,Any>
                let primary_image = relationships!["primary_image"] as? Dictionary<String,Any>
                let data1 = primary_image!["data"] as? Dictionary<String,Any>
                let id = data1!["id"] as! String
                
                model = CarModel(name: name, imageUrl: nil, id: id)
                modelArray.append(model)
            }

            for inc in included {
                var urlModel = UrlModel()
                let attributes2 = inc["attributes"] as! Dictionary<String,Any>
                let url = attributes2["url"] as! String
                let id = inc["id"] as! String
                urlModel = UrlModel(id: id, url: url)
                urlModelArray.append(urlModel)
                
            }
            for i in urlModelArray {
                for var j in modelArray {
                    if i.id == j.id {
                        j.imageUrl = i.url
                        completedArray.append(j)
                    }
                }
            }
            
            for i in completedArray {
                let vehiclesEntity = Vehicles(context: context)
                vehiclesEntity.name = i.name
                vehiclesEntity.url = i.imageUrl
            }
            
            do {
                try context.save()
            }
            catch {
                print(error.localizedDescription)
            }
        }
    }
}
