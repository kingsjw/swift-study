//
//  placeData.swift
//  example1
//
//  Created by 서재우 on 2020/02/10.
//  Copyright © 2020 서재우. All rights reserved.
//

import Foundation
struct PlaceData: Codable {
    public let id: Int
    public let title: String
    public let place: String
    public let star: Int
    public let reviewCount: Int
    public let image: URL
}
