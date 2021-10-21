//
//  ContentViewSeconde.swift
//  Landmark
//
//  Created by as on 2021/10/20.
//

import SwiftUI

///cell content 的内容
struct ContentViewSeconde: View {
    var body: some View {
        HStack {
            Image(systemName: "photo")
            VStack(alignment: .leading) {
                    Text("长城")
                    Text("北京").font(.subheadline)
            }
        }
    }
}

/// cell的点击行为跳转
struct cell: View {
    var body: some View {
        return NavigationLink(destination: LandmarkRowShow())
        {
            ContentViewSeconde()
        }
    }
}


/////这里就是 主要显示的内容内容封装的地方
struct ContentViewSecondeContentView: View {
    var body: some View {
        NavigationView{
            let text = "Today's Flavors"
            List(0 ..< 5)
            { item in
                cell()
            }
            .navigationBarTitle(Text(text))
        }
    }
}
