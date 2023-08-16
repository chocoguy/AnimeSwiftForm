//
//  DataService.swift
//  AnimeSwiftForm
//
//  Created by Edgar Zarco on 8/1/23.
//

import Foundation
import CoreData

class DataService{
    let persistentContainer: NSPersistentContainer
    static let shared = DataService()
    
    private init(){
        
        persistentContainer = NSPersistentContainer(name: "AnimeSwiftFormData")
        persistentContainer.loadPersistentStores{ description, error in
            if let error = error {
                fatalError("Cannot init core data \(error)")
            }
        }
    }
    
}

