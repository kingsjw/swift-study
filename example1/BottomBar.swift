//
//  B'ottomBar.swift
//  example1
//
//  Created by 서재우 on 2020/02/03.
//  Copyright © 2020 서재우. All rights reserved.
//

import SwiftUI

public struct BottomBar: View {
    @Binding public var selectedIndex: Int
    private let mainColor = Color(hex: "ff3344");
    public let items: [BottomBarItem]
    
    public init(selectedIndex: Binding<Int>, items: [BottomBarItem]) {
        self._selectedIndex = selectedIndex
        self.items = items
//        UITabBar.appearance().unselectedItemTintColor = UIColor.black
    }
    
    func itemView(at index: Int) -> some View {
        Button(action: {
            self.selectedIndex = index
        }) {
            BottomBarItemView(isSelected: index == selectedIndex, item: items[index])
        }
    }
    public var body: some View {
        TabView{
            ForEach(0 ..< items.count) { index in
                VStack{
                    Text(self.items[index].path)
                        .accentColor(self.mainColor)
                }.tabItem{
                    self.itemView(at: index)
                }
            }
        }
        .accentColor(self.mainColor)
    }

}

