//
//  search.swift
//  example1
//
//  Created by 서재우 on 2020/02/10.
//  Copyright © 2020 서재우. All rights reserved.
//

import SwiftUI

struct search: View {
    let place = DataLoader().placeData

    var body: some View {
        ForEach(place, id: \.id) { item in
            VStack {
                HStack{
                    Text(item.title)
                        .foregroundColor(Color(.black))
                }
            }
        }
    }
    func print(title: String) {
        Swift.print(title)
    }
}

struct search_Previews: PreviewProvider {
    static var previews: some View {
        search()
    }
}
