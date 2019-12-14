//
//  ViewController.swift
//  meal3
//
//  Created by Q on 12/13/19.
//  Copyright © 2019 Q. All rights reserved.
//

import UIKit
import Contacts


class ViewController: UIViewController {
    
    // Mark: Properties
    @IBOutlet weak var text: UITextField!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var text2: UITextField!
    @IBOutlet weak var text3: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Retrieve saved info
        let name = UserDefaults.standard.object(forKey: "Name")
        let tel = UserDefaults.standard.object(forKey: "Tel")
        let email = UserDefaults.standard.object(forKey: "Email")
        
        print("Retrieved as", name, tel, email)
        text.text = name as? String
        text2.text = tel as? String
        text3.text = email as? String
        
        
        // Generate QR based on retrieved info
        let vcf = create_vcf(from: text.text!, from: text2.text!, from: text3.text!)
        image.image = generateQRCode(from:  vcf)
    }
    
    // Mark: Actions
    @IBAction func Button(_ sender: UIButton) {
        
        // SAVE entered values
        UserDefaults.standard.set(text.text, forKey: "Name")
        UserDefaults.standard.set(text2.text, forKey: "Tel")
        UserDefaults.standard.set(text3.text, forKey: "Email")
        
        
        
        // Retrieve saved info
        let name = UserDefaults.standard.object(forKey: "Name")
        let tel = UserDefaults.standard.object(forKey: "Tel")
        let email = UserDefaults.standard.object(forKey: "Email")
        
        print("SAVED AS", name, tel, email)
        
        text.text = name as? String
        text2.text = tel as? String
        text3.text = email as? String
        
        // Generate QR based on retrieved info
        var vcf = create_vcf(from: text.text!, from: text2.text!, from: text3.text!)
        image.image = generateQRCode(from:  vcf)


    }
 
}

func create_vcf(from name: String, from tel: String, from email: String) -> String{

    let firstname = name
    let lastname = ""
    
    let FirstLast = name.components(separatedBy: " ")
    let size = FirstLast.count
    
    if size > 1 {
            var firstname = FirstLast[0]
            var lastname = FirstLast[1]
    }


    
    let vcf = "BEGIN:VCARD\nVERSION:3.0\nPRODID:-//Apple Inc.//iPhone OS 12.1.4//EN\nN:"+lastname+";"+firstname+";;;\nFN: "+firstname+lastname+"\nEMAIL;type=INTERNET;type=WORK;type=pref:"+email+"\nTEL;type=IPHONE;type=CELL;type=VOICE;type=pref:"+tel+"\nEND:VCARD"

    return vcf
}

func generateQRCode(from string: String) -> UIImage? {
    let data = string.data(using: String.Encoding.ascii)

    if let filter = CIFilter(name: "CIQRCodeGenerator") {
        filter.setValue(data, forKey: "inputMessage")
        let transform = CGAffineTransform(scaleX: 3, y: 3)

        if let output = filter.outputImage?.transformed(by: transform) {
            return UIImage(ciImage: output)
        }
    }

    return nil
}

//        var ya = ABAddressBook()
//class ABAddressBook : NSObject {
//    var ya = me()
//}


