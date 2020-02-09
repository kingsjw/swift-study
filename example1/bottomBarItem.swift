//
//  bottomBarItem.swift
//  example1
//
//  Created by 서재우 on 2020/02/03.
//  Copyright © 2020 서재우. All rights reserved.
//

import SwiftUI

public struct BottomBarItem {
    public let icon: String
    public let title: String
    public let path: String
    
    public init(
        icon: String,
        title: String,
        path: String
    ) {
        self.icon = icon
        self.title = title
        self.path = path
    }
}
