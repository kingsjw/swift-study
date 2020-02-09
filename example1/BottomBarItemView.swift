//
//  BottomBarItemView.swift
//  example1
//
//  Created by 서재우 on 2020/02/03.
//  Copyright © 2020 서재우. All rights reserved.
//

import SwiftUI

public struct BottomBarItemView: View {
    public let isSelected: Bool
    public let item: BottomBarItem
    private let mainColor = Color(hex: "ff3344");
    
    public var body: some View {
        VStack {
            Image(systemName: item.icon)
                .foregroundColor(isSelected ? mainColor : .primary)
            Text(item.title)
                .foregroundColor(isSelected ? mainColor : .primary)
                .font(.system(size: 12))
        }
        .padding()

    }
}

