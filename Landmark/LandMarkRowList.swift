//
//  LandMarkRowList.swift
//  Landmark
//
//  Created by as on 2021/10/21.
//

import SwiftUI


struct LandMarkRowList :View
{
    var body: some View {
//        List(landmarks, id: \.name) { item in
//                LandmarkRow(landmark: item)
//        }.listStyle(.insetGrouped)
        
        NavigationView
        {
            List(landmarks){  item in
                
                NavigationLink(destination: LandmarkDetail(landmark:item))
                {
                    LandmarkRow(landmark: item)
                }
               
            }
        }
       
    }
}


