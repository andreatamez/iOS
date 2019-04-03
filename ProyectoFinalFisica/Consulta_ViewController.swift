//
//  Consulta_ViewController.swift
//  ProyectoFinalFisica
//
//  Created by Andrea Tamez on 4/1/19.
//  Copyright © 2019 Andrea Tamez. All rights reserved.
//

import UIKit
import PDFKit

class Consulta_ViewController: UIViewController,UIDocumentInteractionControllerDelegate {
    
    @IBOutlet var pdfView: PDFView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pdfView = PDFView(frame: self.view.bounds)
        pdfView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        self.view.addSubview(pdfView)
        
        // Fit content in PDFView.
        pdfView.autoScales = true
        
        // Load Sample.pdf file from app bundle.
        let filepath = Bundle.main.path(forResource: "tirop", ofType: "pdf")
        pdfView.document = PDFDocument(url: URL(fileURLWithPath: filepath!))
        
        pdfView.canZoomIn()
        pdfView.canZoomOut()
        
        pdfView.autoScales = true
    }

}
