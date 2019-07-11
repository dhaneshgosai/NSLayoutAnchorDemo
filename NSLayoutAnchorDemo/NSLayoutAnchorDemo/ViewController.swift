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
    let fieldsArray = ["First Name", "Last Name", "Ang", "Address", "Pin Code", "City", "State", "Country"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        //Full View
//        addViewWithLayoutAnchor()
        
//        //Center View
//        addViewInCenterOfSueprView()
        
//        //Form View
//        addFormViewInSuperView()
        
//        //ScrollView
//        setupScrollView()
        
        //Height & Width with multipler
        addViewWithMultipler()
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
        
        NSLayoutConstraint.activate([
            centerView.widthAnchor.constraint(equalToConstant: 200),
            centerView.heightAnchor.constraint(equalToConstant: 200),
            centerView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            centerView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor)
        ])
        
        
        
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
        self.scrollView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true;
        self.scrollView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 20).isActive = true;
        self.scrollView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true;
        self.scrollView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -10).isActive = true;
        self.scrollView.widthAnchor.constraint(equalTo: self.view.widthAnchor).isActive = true
        
        //Add and setup stack view
        self.scrollView.addSubview(self.containerView)
        self.containerView.translatesAutoresizingMaskIntoConstraints = false
        self.containerView.backgroundColor = .red
        
        //constrain stack view to scroll view
        self.containerView.leadingAnchor.constraint(equalTo: self.scrollView.leadingAnchor).isActive = true;
        self.containerView.topAnchor.constraint(equalTo: self.scrollView.topAnchor).isActive = true;
        self.containerView.trailingAnchor.constraint(equalTo: self.scrollView.trailingAnchor).isActive = true;
        self.containerView.widthAnchor.constraint(equalTo: self.scrollView.widthAnchor).isActive = true;
        
        let topImage = UIImageView()
        topImage.image = UIImage.init(named: "sampletop")
        topImage.translatesAutoresizingMaskIntoConstraints = false
        self.containerView.addSubview(topImage)
        
        topImage.leadingAnchor.constraint(equalTo: self.containerView.leadingAnchor, constant: 5.0).isActive = true
        topImage.trailingAnchor.constraint(equalTo: self.containerView.trailingAnchor, constant: -5.0).isActive = true
        topImage.topAnchor.constraint(equalTo: self.containerView.topAnchor, constant: 5.0).isActive = true
        topImage.heightAnchor.constraint(equalToConstant: 600.0).isActive = true
        
        var prewBottomAnchor = topImage.bottomAnchor
        for filed in fieldsArray {
            
            let fieldLable = UILabel()
            fieldLable.text = filed + ":"
            fieldLable.translatesAutoresizingMaskIntoConstraints = false
            self.containerView.addSubview(fieldLable)
            
            let fieldTextField = UITextField()
            fieldTextField.placeholder = "Enter " + filed
            fieldTextField.borderStyle = .roundedRect
            fieldTextField.translatesAutoresizingMaskIntoConstraints = false
            self.containerView.addSubview(fieldTextField)
            
            fieldLable.leadingAnchor.constraint(equalTo: self.containerView.leadingAnchor, constant: 20.0).isActive = true
            fieldLable.topAnchor.constraint(equalTo: prewBottomAnchor, constant: 20.0).isActive = true
            
            fieldTextField.leadingAnchor.constraint(equalTo: fieldLable.trailingAnchor, constant: 10.0).isActive = true
            fieldTextField.trailingAnchor.constraint(equalTo: self.containerView.trailingAnchor, constant: -20).isActive = true
            
            fieldLable.firstBaselineAnchor.constraint(equalTo: fieldTextField.firstBaselineAnchor).isActive = true
            fieldLable.setContentHuggingPriority(UILayoutPriority.required, for: .horizontal)
            
            prewBottomAnchor = fieldLable.bottomAnchor
            
        }
        
        //Add Submit Button
        let submitBtn = UIButton()
        submitBtn.setTitle("Submit", for: .normal)
        submitBtn.backgroundColor = .blue
        submitBtn.addTarget(self, action: #selector(self.btnSubmitClicked(_:)), for: .touchUpInside)
        
        submitBtn.translatesAutoresizingMaskIntoConstraints = false
        self.containerView.addSubview(submitBtn)
        
        submitBtn.topAnchor.constraint(equalTo: prewBottomAnchor, constant: 20.0).isActive = true
        submitBtn.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        
        self.containerView.bottomAnchor.constraint(equalTo: submitBtn.bottomAnchor).isActive = true;
        self.scrollView.bottomAnchor.constraint(equalTo: self.containerView.bottomAnchor).isActive = true
    
    }
    
    func addViewWithMultipler() {
        
        
        let sampleView = UIView()
        sampleView.translatesAutoresizingMaskIntoConstraints = false
        sampleView.backgroundColor = .red
        self.view.addSubview(sampleView)
        
        //Set Cosntrains X & Y
        sampleView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        sampleView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        
        //Set Height & Width as per super view
        sampleView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.5).isActive = true
        sampleView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.5).isActive = true
        
    }
    
    @IBAction func  btnSubmitClicked (_ sender: UIButton) {
        print("Submit button clicked")
    }


}

