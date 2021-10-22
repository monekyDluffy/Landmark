//
//  LandmarkDetail.swift
//  Landmark
//
//  Created by as on 2021/10/21.
//

import SwiftUI

struct LandmarkDetail : View
{
    var landmark: Landmark

    var body : some View
    {
        VStack {
            MapView(coordinate: landmark.locationCoordinate)
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            
            CircleImage().offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.title).foregroundColor(.primary)
                
                HStack{
                    Text(landmark.park)
                    Spacer()
                    Text(landmark.state)
                }
                .font(.subheadline).foregroundColor(.secondary)
                
                Divider()
                
                Text("about \(landmark.name)")
                    .font(.title2)
                
                Text(landmark.description)

                
  
            }.padding()
            
           Spacer()
        }
    }
}





struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarks[0])
    }
}
