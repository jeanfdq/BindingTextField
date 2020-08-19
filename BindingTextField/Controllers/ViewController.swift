//
//  ViewController.swift
//  BindingTextField
//
//  Created by Jean Paull on 19/08/20.
//  Copyright © 2020 Jean Paull. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    private var personViewModel = PersonViewModel()
    
    lazy var personName:BindingTextField = {
        let txf = BindingTextField()
        txf.placeholder = "seu nome:"
        txf.keyboardType = .alphabet
        txf.layer.borderWidth = 0.5
        txf.layer.cornerRadius = 5
        txf.layer.borderColor = UIColor.lightGray.cgColor
        txf.autocapitalizationType = .words
        txf.bind { self.personViewModel.name = $0 }
        return txf
    }()
    

    
    lazy var personLastName:BindingTextField = {
        let txf = BindingTextField()
        txf.placeholder = "sobrenome:"
        txf.keyboardType = .alphabet
        txf.layer.borderWidth = 0.5
        txf.layer.cornerRadius = 5
        txf.layer.borderColor = UIColor.lightGray.cgColor
        txf.autocapitalizationType = .words
        txf.bind { self.personViewModel.lastName = $0 }
        return txf
    }()
    
    lazy var personPhone:BindingTextField = {
        let txf = BindingTextField()
        txf.placeholder = "celular"
        txf.keyboardType = .numberPad
        txf.layer.borderWidth = 0.5
        txf.layer.cornerRadius = 5
        txf.layer.borderColor = UIColor.lightGray.cgColor
        txf.bind { self.personViewModel.phoneNumber = $0 }
        return txf
    }()
    
    lazy var personCity:BindingTextField = {
        let txf = BindingTextField()
        txf.placeholder = "cidade"
        txf.keyboardType = .alphabet
        txf.layer.borderWidth = 0.5
        txf.layer.cornerRadius = 5
        txf.layer.borderColor = UIColor.lightGray.cgColor
        txf.autocapitalizationType = .words
        txf.bind { self.personViewModel.cityName = $0 }
        return txf
    }()
    
    lazy var btnBinding:UIButton = {
        let btn = UIButton()
        btn.backgroundColor = #colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1)
        btn.layer.cornerRadius = 8
        btn.setTitle("Binding", for: .normal)
        btn.setTitleColor(.white, for: .normal)
        btn.addTarget(self, action: #selector(self.showBinding), for: .touchUpInside)
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
        
        personName.delegate = self
        
        view.addSubview(personName)
        view.addSubview(personLastName)
        view.addSubview(personPhone)
        view.addSubview(personCity)
        view.addSubview(btnBinding)
        view.addSubview(labelBinding)
        
        personName.applyViewConstraints( top: view.safeAreaLayoutGuide.topAnchor, centerX: view.centerXAnchor, size: .init(width: view.frame.width * 0.7, height: 35), value: .init(top: 20, left: 0, bottom: 0, right: 0))
        
        personLastName.applyViewConstraints(leading: personName.leadingAnchor, top: personName.bottomAnchor, trailing: personName.trailingAnchor, size: .init(width: view.frame.width * 0.7, height: 35), value: .init(top: 20, left: 0, bottom: 0, right: 0))
        personPhone.applyViewConstraints(leading: personLastName.leadingAnchor, top: personLastName.bottomAnchor, trailing: personLastName.trailingAnchor, size: .init(width: view.frame.width * 0.7, height: 35), value: .init(top: 20, left: 0, bottom: 0, right: 0))
        
        personCity.applyViewConstraints(leading: personPhone.leadingAnchor, top: personPhone.bottomAnchor, trailing: personPhone.trailingAnchor, size: .init(width: view.frame.width * 0.7, height: 35), value: .init(top: 20, left: 0, bottom: 0, right: 0))
        
        btnBinding.applyViewConstraints( top: personCity.bottomAnchor, centerX: view.centerXAnchor, size: .init(width: view.frame.width * 0.5, height: 35), value: .init(top: 20, left: 0, bottom: 0, right: 0))
        
        labelBinding.applyViewConstraints(leading: personCity.leadingAnchor, top: btnBinding.bottomAnchor, trailing: personCity.trailingAnchor, size: .init(width: 0, height: 0), value: .init(top: 20, left: 0, bottom: 0, right: 0))
        
    }

    @objc func showBinding(){
        labelBinding.text = "Name:\(personViewModel.name)\nSobrenome:\(personViewModel.lastName)\nCelular:\(personViewModel.phoneNumber)\nCidade:\(personViewModel.cityName)"
    }
    
    

}

