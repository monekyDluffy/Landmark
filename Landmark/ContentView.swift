//
//  ContentView.swift
//  Landmark
//
//  Created by as on 2021/10/20.
//

import SwiftUI


//这个是主界面
struct ContentView: View {
    var body: some View
    {
//        LandmarkRowShow()  这里是切换视图的地方
        LandMarkRowList()
    }
}

///预览代码可有可无
#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LandMarkRowList()
    }
}
#endif
