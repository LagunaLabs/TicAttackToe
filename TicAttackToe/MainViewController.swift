//
//  MainViewController.swift
//  TicAttackToe
//
//  Created by Justin Honda on 9/16/19.
//  Copyright © 2019 Justin Honda. All rights reserved.
//

import Firebase
import LBTAComponents
import UIKit

class MainViewController: UIViewController {
    
    lazy var bottomToolBar: UIView = {
        let vw = UIView()
        vw.backgroundColor = UIColor.red
        return vw
    }()
    
    lazy var vertStackViewOne: UIStackView = {
        let stkView = UIStackView()
        stkView.alignment = UIStackView.Alignment.center
        stkView.axis = NSLayoutConstraint.Axis.vertical
        return stkView
    }()
    
    lazy var vertStackViewTwo: UIStackView = {
        let stkView = UIStackView()
        stkView.alignment = UIStackView.Alignment.center
        stkView.axis = NSLayoutConstraint.Axis.vertical
        return stkView
    }()
    
    lazy var vertStackViewThree: UIStackView = {
        let stkView = UIStackView()
        stkView.alignment = UIStackView.Alignment.center
        stkView.axis = NSLayoutConstraint.Axis.vertical
        return stkView
    }()
    
    lazy var horizStackViewMain: UIStackView = {
        let stkView = UIStackView()
        stkView.alignment = UIStackView.Alignment.center
        stkView.axis = NSLayoutConstraint.Axis.horizontal
        return stkView
    }()
    
    lazy var boxOne: UIImageView = {
        let imgView = UIImageView()
        imgView.backgroundColor = UIColor.green
        imgView.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        return imgView
    }()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.blue
        loadUIElements { (success) in
            if success {
                print("Successful loading of UI Elements")
            }
        }
        
    }
    
    func loadUIElements(completion: (Bool) -> ()) {
        view.addSubview(horizStackViewMain)
        horizStackViewMain.anchor(view.safeAreaLayoutGuide.topAnchor, left: view.safeAreaLayoutGuide.leftAnchor, bottom: nil, right: view.safeAreaLayoutGuide.rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        view.addSubview(bottomToolBar)
        bottomToolBar.anchor(horizStackViewMain.bottomAnchor, left: view.safeAreaLayoutGuide.leftAnchor, bottom: view.safeAreaLayoutGuide.bottomAnchor, right: view.safeAreaLayoutGuide.rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 50)
        completion(true)
    }
    
}
