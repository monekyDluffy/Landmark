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
            
            VStack {
                Text("Turtle Rock")
                    .font(.title).foregroundColor(.primary)
                
                HStack{
                    Text("joshua Tree National Park")
                    Spacer()
                    Text("california")
                }
                .font(.subheadline).foregroundColor(.secondary)
//                这里应该是针对 HSstack里面的元素进行一次总体赋值等于下面的代码
                
                
                
            }
            
            Divider()

            
            
            
            
            
         Spacer()
        }
    }
}





struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail()
    }
}
