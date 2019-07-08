//
//  ViewController.swift
//  NSLayoutAnchorDemo
//
//  Created by Dhanesh on 08/07/19.
//  Copyright © 2019 Exp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        //Full View
//        addViewWithLayoutAnchor()
        
//        //Center View
//        addViewInCenterOfSueprView()
        
        //Form View
        addFormViewInSuperView()
    }
    
    func addViewWithLayoutAnchor() {
        
        //Create Main View
        let mainView = UIView()
        
        //Change color
        mainView.backgroundColor = .red
        
        //Add main to superview
        self.view.addSubview(mainView)
        
        //disbale translatesAutoresizingMaskIntoConstraints
        mainView.translatesAutoresizingMaskIntoConstraints = false
        
        //set layout constrains
        mainView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        mainView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        mainView.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        mainView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        
        
    }
    
    func addViewInCenterOfSueprView() {
        
        let centerView = UIView()
        centerView.backgroundColor = .blue
        self.view.addSubview(centerView)
        
        //disbale translatesAutoresizingMaskIntoConstraints
        centerView.translatesAutoresizingMaskIntoConstraints = false
        
        centerView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        centerView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        centerView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        centerView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        
    }
    
    func addFormViewInSuperView() {
        
        let firstNameLabel = UILabel()
        firstNameLabel.text = "First Name:"
        firstNameLabel.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(firstNameLabel)
        
        let firstNameTestFiled = UITextField()
        firstNameTestFiled.placeholder = "Enter First Name"
        firstNameTestFiled.borderStyle = .roundedRect
        firstNameTestFiled.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(firstNameTestFiled)
        
        firstNameLabel.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20.0).isActive = true
        firstNameLabel.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 84.0).isActive = true
        
        firstNameTestFiled.leadingAnchor.constraint(equalTo: firstNameLabel.trailingAnchor, constant: 10.0).isActive = true
        firstNameTestFiled.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20).isActive = true

        firstNameLabel.firstBaselineAnchor.constraint(equalTo: firstNameTestFiled.firstBaselineAnchor).isActive = true
        
        firstNameLabel.setContentHuggingPriority(UILayoutPriority.required, for: .horizontal)
        
    }


}

