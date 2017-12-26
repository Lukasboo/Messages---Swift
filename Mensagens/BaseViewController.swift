//
//  BaseViewController.swift
//  Mensagens
//
//  Created by Ricardo Corrales on 25/12/17.
//  Copyright © 2017 Eric Brito. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    @IBOutlet weak var lbMessage: UILabel!
    var message: Message!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func changeColor(_ sender: UIButton) {
        if let reference = self as? ColorPickerProtocol {
            let colorPicker = storyboard?.instantiateViewController(withIdentifier: "ColorPickerViewController") as! ColorPickerViewController
            colorPicker.modalPresentationStyle = .overCurrentContext
            colorPicker.reference = reference
            present(colorPicker, animated: true, completion: nil)
        }
    }

  
}
