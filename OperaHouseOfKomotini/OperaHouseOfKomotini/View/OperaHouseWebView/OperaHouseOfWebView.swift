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
final class OperaHouseOfWebView:UIViewRepresentable{
    var title:String
    var filename:Bool!=false
    init(title:String,filename:Bool){
        self.title = title
        self.filename = filename
    }
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
    
    var webView:WKWebView!
    func makeUIView(context: Context) -> some UIView {
        if filename{
            webView = WKWebView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height))
            let request = URLRequest(url: URL(fileURLWithPath:title))
            webView.load(request)
        }
        else{
            webView = WKWebView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height))
            let request = URLRequest(url: URL(string:title)!)
            webView.load(request)
        }
        return webView
    }
}
