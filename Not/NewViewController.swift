//
//  NewViewController.swift
//  Not
//
//  Created by Zeynep Sevgi on 29.08.2022.
//

import UIKit

class NewViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var textField: UITextField!
    
    public var completion :((String,String)->Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Save", style: .done, target: self, action: #selector(didTapSave))
    }
    @objc func didTapSave(){
        if let title = textField.text,
           !title.isEmpty,
           !textView.text.isEmpty{
            
            completion?(title,textView.text)
        }
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
