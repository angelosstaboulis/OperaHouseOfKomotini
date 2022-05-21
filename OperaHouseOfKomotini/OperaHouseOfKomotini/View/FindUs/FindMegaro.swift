//
//  FindMegaro.swift
//  OperaHouseOfKomotini
//
//  Created by Angelos Staboulis on 21/5/22.
//

import SwiftUI
import MapKit
struct AnnotatedItem:Identifiable{
    var id:Int
    var label:String
    var coordinate:CLLocationCoordinate2D

}

struct FindMegaro: View {
    @State var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 41.128190, longitude: 25.411050), span: MKCoordinateSpan(latitudeDelta: 0.005, longitudeDelta: 0.005))
    @State var items:[AnnotatedItem] = [AnnotatedItem(id: 1, label: "Opera House Of Komotini",coordinate: CLLocationCoordinate2D(latitude: 41.128190, longitude: 25.411050))]
    var body: some View {
        Map(coordinateRegion:$region, annotationItems: items) { value in
            MapMarker(coordinate: CLLocationCoordinate2D(latitude: 41.128190, longitude: 25.411050), tint: .red)
        }
    }
}

struct FindMegaro_Previews: PreviewProvider {
    static var previews: some View {
        FindMegaro()
    }
}
