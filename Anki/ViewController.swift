//
//  ViewController.swift
//  Anki
//
//  Created by Adrien Cantérot on 10/10/2017.
//  Copyright © 2017 Adrien Cantérot. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIDocumentPickerDelegate {

    let deckImporter = DeckImporter()
    
    @IBAction func importAction(_ sender: Any) {
        let documentPicker = UIDocumentPickerViewController(documentTypes: ["apkg"], in: .import)
        documentPicker.delegate = self
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func documentPicker(_ controller: UIDocumentPickerViewController, didPickDocumentsAt urls: [URL]) {
        if let url = urls.first {
            self.deckImporter.url = url
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

