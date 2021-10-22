//
//  MapView.swift
//  Landmark
//
//  Created by as on 2021/10/20.
//

import SwiftUI
import MapKit

extension View {
    func debugPrint(_ value:Any) -> some View {
        #if DEBUG
        print("1112321")
        print(value)
        #endif
        return self
    }
}

struct MapView: View
{
    var coordinate:CLLocationCoordinate2D
    @State private var region =  MKCoordinateRegion()
    var body: some View
    {
        Map(coordinateRegion: $region).onAppear{setRegion(coordinate)}
        
    }
    
//这是一个set方法
    private func setRegion(_ coordinate:  CLLocationCoordinate2D)
    {
    
        region = MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }
    
    
    
}

struct MapView_preViews: PreviewProvider
{
    static var previews: some View {
        MapView(coordinate:  CLLocationCoordinate2D(latitude: 31.1934719, longitude: 121.6025738))
    }
}

