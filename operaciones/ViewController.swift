//
//  ViewController.swift
//  operaciones
//
//  Created by Manuel Zegarra on 5/09/15.
//  Copyright (c) 2015 M-Sonic. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var segTipoOperacion: UISegmentedControl!
    
    
    @IBOutlet weak var txtN1: UITextField!
    
    
    
    @IBOutlet weak var txtN2: UITextField!
    
    
    
    @IBOutlet weak var lblRp: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    
    @IBAction func btnCalcular(sender: UIButton) {
        
        
        let n1:Int = txtN1.text.toInt()!;
        
        let n2:Int = txtN2.text.toInt()!;
        
        var rp: Double = 0;
        
        if segTipoOperacion.selectedSegmentIndex==0{
            rp = Double(n1) + Double(n2);
        }else if segTipoOperacion.selectedSegmentIndex==1{
            rp = Double(n1) - Double(n2);
        }else if segTipoOperacion.selectedSegmentIndex==2{
            rp = Double(n1) * Double(n2);
        }else if segTipoOperacion.selectedSegmentIndex==3{
            rp = Double(n1) / Double(n2);
        }
        n1 + n2;
        
        lblRp.text = "\(rp)";
        
        
        
    }
    
}

