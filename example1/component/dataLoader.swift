//
//  dataLoader.swift
//  example1
//
//  Created by 서재우 on 2020/02/10.
//  Copyright © 2020 서재우. All rights reserved.
//

import Foundation

public class DataLoader {
    @Published var placeData = [PlaceData]()
    
    init() {
        load()
        sort()
    }
    
    func load() {
        if let fileLocation = Bundle.main.url(forResource: "place", withExtension: "json") {
            do {
                let data = try Data(contentsOf: fileLocation)
                let jsonDecoder = JSONDecoder()
                self.placeData = try jsonDecoder.decode([PlaceData].self, from: data) 
            } catch {
                print(error)
            }
        }
    }
    func sort() {
        self.placeData = self.placeData.sorted(by: { $0.id < $1.id })
    }
}
