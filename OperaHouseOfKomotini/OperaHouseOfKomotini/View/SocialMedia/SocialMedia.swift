//
//  SocialMedia.swift
//  OperaHouseOfKomotini
//
//  Created by Angelos Staboulis on 22/5/22.
//

import SwiftUI

struct SocialMedia: View {
    var body: some View {
        OperaHouseOfWebView(title: "https://www.facebook.com/balkangateculture",filename: false)
    }
}

struct SocialMedia_Previews: PreviewProvider {
    static var previews: some View {
        SocialMedia()
    }
}
