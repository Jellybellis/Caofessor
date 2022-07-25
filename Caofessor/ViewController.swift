//
//  ViewController.swift
//  Caofessor
//
//  Created by Isabela Batista on 09/05/22.
//

import UIKit

class ViewController: UIViewController {
   
    
    @IBOutlet var nomeTextfield: UITextField!
    
    @IBAction func tocouVamos(_ sender: Any) {
        let navigation = storyboard?.instantiateViewController(withIdentifier:"Navigation2VC") as! UINavigationController
        let controller = navigation.viewControllers.first as! EscolhasViewController
        controller.text = nomeTextfield.text
        navigation.modalPresentationStyle = .fullScreen // O jeito que eu to apresentando é em  tela cheia
        present(navigation, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    
}


