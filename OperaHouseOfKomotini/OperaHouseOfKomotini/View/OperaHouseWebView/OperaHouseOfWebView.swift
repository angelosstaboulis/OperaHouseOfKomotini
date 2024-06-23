//
//  OperaHouseOfWebView.swift
//  OperaHouseOfKomotini
//
//  Created by Angelos Staboulis on 22/5/22.
//

import Foundation
import SwiftUI
import UIKit
import WebKit
struct OperaHouseOfWebView:UIViewRepresentable{
    var title:String
    var filename:Bool!=false
    var webView = WKWebView(frame: .zero)
    init(title:String,filename:Bool){
        self.title = title
        self.filename = filename
    }
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
    func makeUIView(context: Context) -> some UIView {
        if filename{
            let request = URLRequest(url: URL(fileURLWithPath:title))
            webView.load(request)
        }
        else{
            let request = URLRequest(url: URL(string:title)!)
            webView.load(request)
        }
        return webView
    }
}
