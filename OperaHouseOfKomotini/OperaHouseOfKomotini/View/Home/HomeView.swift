//
//  HomeView.swift
//  OperaHouseOfKomotini
//
//  Created by Angelos Staboulis on 21/5/22.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ScrollView{
            Image(uiImage: UIImage(named: "megaro")!).resizable()
            Image(uiImage: UIImage(named: "main")!).resizable()
        }.background(Rectangle().foregroundColor(.white))
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
