//
//  LandmarkRow.swift
//  Landmark
//
//  Created by as on 2021/10/21.
//

import SwiftUI

struct LandmarkRow: View
{
    var landmark: Landmark
    var body: some View
    {
        HStack() {
            landmark.image.resizable().frame(width: 50, height: 50, alignment: .leading)
            Text(landmark.name)
            Spacer()
        }
    }
}

struct LandmarkRowShow: View
{
    var body: some View
    {
        LandmarkRow(landmark: landmarks[0])
    }
}


struct LandmarkRow_PreView: PreviewProvider {
    static var previews: some View {
        LandmarkRow(landmark: landmarks[0])
    }
}
