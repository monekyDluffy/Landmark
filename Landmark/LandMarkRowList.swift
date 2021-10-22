//
//  LandMarkRowList.swift
//  Landmark
//
//  Created by as on 2021/10/21.
//

import SwiftUI


struct LandMarkRowList :View
{
    @State private var showFavoritesOnly = true
//    @EnvironmentObject var modelData: ModelData
    
//  0||1 or 0 过滤后显示为1的     1 || 1 or 0   不过滤
    var filteredLandmark: [Landmark]
    {
        landmarks.filter{ landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    
    var body: some View {

        NavigationView
        {
            List(){
            
                Toggle(isOn: $showFavoritesOnly) {
                                   Text("Favorites only")
                               }
               
                ForEach(filteredLandmark){ item in
                    NavigationLink(destination: LandmarkDetail(landmark:item))
                                    {
                                        LandmarkRow(landmark: item)
                                    }
                }
//                NavigationLink(destination: LandmarkDetail(landmark:item))
//                {
//                    LandmarkRow(landmark: item)
//                }
               
            }.nav
        }
       
    }
}


struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandMarkRowList()
    }
}
