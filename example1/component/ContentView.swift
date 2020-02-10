//
//  ContentView.swift
//  example1
//
//  Created by 서재우 on 03/02/2020.
//  Copyright © 2020 서재우. All rights reserved.
//

import SwiftUI
 
let items: [BottomBarItem] = [
    BottomBarItem(icon: "magnifyingglass", title: "탐색하기", path: "/"),
    BottomBarItem(icon: "heart", title: "나의 예약", path: "/myBook"),
    BottomBarItem(icon: "message", title: "메시지", path: "/message"),
    BottomBarItem(icon: "person.fill", title: "프로필", path: "/account"),
]

struct ContentView : View {
    @State private var selectedIndex: Int = 0
    @State private var search: String = ""
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.white]
    }
    var selectedItem: BottomBarItem {
        items[selectedIndex]
    }
    var body: some View {
        BottomBar(selectedIndex: $selectedIndex, items: items)
    }
}
