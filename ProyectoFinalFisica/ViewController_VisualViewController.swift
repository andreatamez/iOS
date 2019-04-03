//
//  ViewController_VisualViewController.swift
//  ProyectoFinalFisica
//
//  Created by Andrea Tamez on 4/2/19.
//  Copyright © 2019 Andrea Tamez. All rights reserved.
//

import UIKit

class ViewController_VisualViewController: UIViewController {
    
    @IBOutlet weak var cancel: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func Cancelo(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
