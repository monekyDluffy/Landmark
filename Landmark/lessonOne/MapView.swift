//
//  MapView.swift
//  Landmark
//
//  Created by as on 2021/10/20.
//

import SwiftUI
import MapKit

struct MapView: View
{
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 31.1934719, longitude: 121.6025738), span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
    )
    
    var body: some View
    {
        Map(coordinateRegion: $region)
    }
}

struct MapView_preViews: PreviewProvider
{
    static var previews: some View {
        MapView()
    }
}

