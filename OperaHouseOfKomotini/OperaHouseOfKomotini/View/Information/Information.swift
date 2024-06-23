//
//  Information.swift
//  OperaHouseOfKomotini
//
//  Created by Angelos Staboulis on 22/5/22.
//

import SwiftUI

struct Information: View {
    var body: some View {
        NavigationView{
            ZStack{
                List{
                    HStack{
                        Image(uiImage: UIImage(named: "megaro")!).resizable()
                    }.frame(width: 360, height: 60, alignment: .center)
                    NavigationLink("Introduction") {
                        Text("Introduction")
                        PDFViewer(urlFile: Bundle.main.path(forResource: "megarokomotinis", ofType: "pdf")!)
                    }.navigationBarHidden(true).navigationTitle(Text("Information")).navigationBarTitleDisplayMode(NavigationBarItem.TitleDisplayMode.inline)
                    NavigationLink("Parking") {
                        Text("Parking")
                        OperaHouseOfWebView(title:Bundle.main.path(forResource: "parking", ofType: "html")!,filename: true)
                    }.navigationBarHidden(true).navigationTitle(Text("Information")).navigationBarTitleDisplayMode(NavigationBarItem.TitleDisplayMode.inline)
                    NavigationLink("AMEA") {
                        Text("AMEA")
                        OperaHouseOfWebView(title:Bundle.main.path(forResource: "amea", ofType: "html")!,filename: true)
                    }.navigationBarHidden(true).navigationTitle(Text("Information")).navigationBarTitleDisplayMode(NavigationBarItem.TitleDisplayMode.inline)
                    NavigationLink("History") {
                        Text("History")
                        OperaHouseOfWebView(title:Bundle.main.path(forResource: "history", ofType: "html")!,filename:true)
                    }.navigationBarHidden(true).navigationTitle(Text("Information")).navigationBarTitleDisplayMode(NavigationBarItem.TitleDisplayMode.inline)
                }
            }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
        }
    }
}

struct Information_Previews: PreviewProvider {
    static var previews: some View {
        Information()
    }
}
