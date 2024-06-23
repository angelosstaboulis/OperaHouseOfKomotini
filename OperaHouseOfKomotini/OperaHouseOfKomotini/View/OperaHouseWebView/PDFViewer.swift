//
//  PDFViewer.swift
//  OperaHouseOfKomotini
//
//  Created by Angelos Staboulis on 23/6/24.
//

import Foundation
import SwiftUI
import PDFKit
struct PDFViewer:UIViewRepresentable{
    var urlFile = String()
    func updateUIView(_ uiView: PDFView, context: Context) {
    }
 
    func makeUIView(context: Context) ->  PDFView {
        let pdfViewer = PDFView(frame: .zero)
        pdfViewer.autoScales = true
        let urlMain = URL(fileURLWithPath:urlFile)
       
        let document = PDFDocument(url: urlMain)
        pdfViewer.document = document
        
        
        return pdfViewer
    }
}

