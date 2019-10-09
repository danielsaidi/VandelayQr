//
//  ViewController+Alert.swift
//  VandelayDemo
//
//  Created by Daniel Saidi on 2019-10-08.
//

import Vandelay
import UIKit

extension ViewController {
    
    func alert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    
    func alertError(_ message: String) {
        alert(title: "Error", message: message)
    }
}
