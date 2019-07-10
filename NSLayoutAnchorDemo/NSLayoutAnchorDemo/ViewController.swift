//
//  ViewController.swift
//  NSLayoutAnchorDemo
//
//  Created by Dhanesh on 08/07/19.
//  Copyright © 2019 Exp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let scrollView = UIScrollView()
    let containerView = UIView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        //Full View
//        addViewWithLayoutAnchor()
        
//        //Center View
//        addViewInCenterOfSueprView()
        
//        //Form View
//        addFormViewInSuperView()
        
        //ScrollView
        setupScrollView()
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
    
    func setupScrollView() {
        
        //Add and setup scroll view
        self.view.addSubview(self.scrollView)
        self.scrollView.translatesAutoresizingMaskIntoConstraints = false;
        
        //Constrain scroll view
        self.scrollView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20).isActive = true;
        self.scrollView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 20).isActive = true;
        self.scrollView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20).isActive = true;
        self.scrollView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -20).isActive = true;
        
        //Add and setup stack view
        self.scrollView.addSubview(self.containerView)
        self.containerView.translatesAutoresizingMaskIntoConstraints = false
        self.containerView.backgroundColor = .red
        
        //constrain stack view to scroll view
        self.containerView.leadingAnchor.constraint(equalTo: self.scrollView.leadingAnchor).isActive = true;
        self.containerView.topAnchor.constraint(equalTo: self.scrollView.topAnchor).isActive = true;
        self.containerView.trailingAnchor.constraint(equalTo: self.scrollView.trailingAnchor).isActive = true;
        self.containerView.bottomAnchor.constraint(equalTo: self.scrollView.bottomAnchor).isActive = true;
        
        let firstNameLabel = UILabel()
        firstNameLabel.text = "First Name:"
        firstNameLabel.translatesAutoresizingMaskIntoConstraints = false
        self.containerView.addSubview(firstNameLabel)
        
        let firstNameTestFiled = UITextField()
        firstNameTestFiled.placeholder = "Enter First Name"
        firstNameTestFiled.borderStyle = .roundedRect
        firstNameTestFiled.translatesAutoresizingMaskIntoConstraints = false
        self.containerView.addSubview(firstNameTestFiled)
        
        firstNameLabel.leadingAnchor.constraint(equalTo: self.containerView.leadingAnchor, constant: 20.0).isActive = true
        firstNameLabel.topAnchor.constraint(equalTo: self.containerView.topAnchor, constant: 44.0).isActive = true
        
        firstNameTestFiled.leadingAnchor.constraint(equalTo: firstNameLabel.trailingAnchor, constant: 10.0).isActive = true
        firstNameTestFiled.trailingAnchor.constraint(equalTo: self.containerView.trailingAnchor, constant: -20).isActive = true
        
        firstNameLabel.firstBaselineAnchor.constraint(equalTo: firstNameTestFiled.firstBaselineAnchor).isActive = true
        
        firstNameLabel.setContentHuggingPriority(UILayoutPriority.required, for: .horizontal)
        
        //Second Lable
        let secNameLabel = UILabel()
        secNameLabel.text = "Sec Name:"
        secNameLabel.translatesAutoresizingMaskIntoConstraints = false
        self.containerView.addSubview(secNameLabel)
        
        let secNameTestFiled = UITextField()
        secNameTestFiled.placeholder = "Enter Sec Name"
        secNameTestFiled.borderStyle = .roundedRect
        secNameTestFiled.translatesAutoresizingMaskIntoConstraints = false
        self.containerView.addSubview(secNameTestFiled)
        
        secNameLabel.leadingAnchor.constraint(equalTo: self.containerView.leadingAnchor, constant: 20.0).isActive = true
        secNameLabel.topAnchor.constraint(equalTo: firstNameLabel.bottomAnchor, constant: 20.0).isActive = true
        
        secNameTestFiled.leadingAnchor.constraint(equalTo: secNameLabel.trailingAnchor, constant: 10.0).isActive = true
        secNameTestFiled.trailingAnchor.constraint(equalTo: self.containerView.trailingAnchor, constant: -20).isActive = true
        
        secNameLabel.firstBaselineAnchor.constraint(equalTo: secNameTestFiled.firstBaselineAnchor).isActive = true
        
        secNameLabel.setContentHuggingPriority(UILayoutPriority.required, for: .horizontal)
        
        //Add Submit Button
        let submitBtn = UIButton()
        submitBtn.setTitle("Submit", for: .normal)
        submitBtn.backgroundColor = .blue
        submitBtn.translatesAutoresizingMaskIntoConstraints = false
        self.containerView.addSubview(submitBtn)
        
        submitBtn.topAnchor.constraint(equalTo: secNameLabel.bottomAnchor, constant: 20.0).isActive = true
        submitBtn.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
    
    }


}

