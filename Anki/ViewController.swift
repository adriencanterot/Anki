//
//  ViewController.swift
//  Anki
//
//  Created by Adrien Cantérot on 10/10/2017.
//  Copyright © 2017 Adrien Cantérot. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController, UIDocumentPickerDelegate {

    let context = AppDelegate().persistentContainer.viewContext
    
    var deckImporter: DeckImporter!
    @IBAction func importAction(_ sender: Any) {
        let documentPicker = UIDocumentPickerViewController(documentTypes: ["apkg"], in: .import)
        documentPicker.delegate = self
        present(documentPicker, animated: true, completion: nil)
    }
    override func viewDidLoad() {
        deckImporter = DeckImporter(context: self.context)

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

