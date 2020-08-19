//
//  ViewController.swift
//  BindingTextField
//
//  Created by Jean Paull on 19/08/20.
//  Copyright © 2020 Jean Paull. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let personName:UITextField = {
        let txf = UITextField()
        txf.placeholder = "seu nome:"
        txf.keyboardType = .alphabet
        txf.autocapitalizationType = .words
        return txf
    }()
    
    let personLastName:UITextField = {
        let txf = UITextField()
        txf.placeholder = "sobrenome:"
        txf.keyboardType = .alphabet
        txf.autocapitalizationType = .words
        return txf
    }()
    
    let personPhone:UITextField = {
        let txf = UITextField()
        txf.placeholder = "celular"
        txf.keyboardType = .numberPad
        return txf
    }()
    
    let personCity:UITextField = {
        let txf = UITextField()
        txf.placeholder = "cidade"
        txf.keyboardType = .alphabet
        txf.autocapitalizationType = .words
        return txf
    }()
    
    let btnBinding:UIButton = {
        let btn = UIButton()
        btn.backgroundColor = #colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1)
        btn.layer.cornerRadius = 8
        btn.setTitle("Binding", for: .normal)
        btn.setTitleColor(.white, for: .normal)
        return btn
    }()
    
    let labelBinding:UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 14)
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(personName)
        view.addSubview(personLastName)
        view.addSubview(personPhone)
        view.addSubview(personCity)
        view.addSubview(btnBinding)
        view.addSubview(labelBinding)
        
    }


}

