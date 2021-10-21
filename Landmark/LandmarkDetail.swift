//
//  LandmarkDetail.swift
//  Landmark
//
//  Created by as on 2021/10/21.
//

import SwiftUI

struct LandmarkDetail : View
{
    var body : some View
    {
        VStack {
            MapView()
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            
            CircleImage().offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title).foregroundColor(.primary)
                
                HStack{
                    Text("joshua Tree National Park")
                    Spacer()
                    Text("california")
                }
                .font(.subheadline).foregroundColor(.secondary)
                
                Divider()
                
                Text("about Turtle Rock")
                
                Text("Descriptive text goes here.")

                
  
            }.padding()
            
           Spacer()
        }
    }
}





struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail()
    }
}
