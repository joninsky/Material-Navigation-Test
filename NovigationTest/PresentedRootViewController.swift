//
//  PresentedRootViewController.swift
//  NovigationTest
//
//  Created by Jon Vogel on 3/16/17.
//  Copyright © 2017 Jon Vogel. All rights reserved.
//

import Material


class PresentedRootViewController: UIViewController {
    
    
    let dismissButton = IconButton(image: Icon.cm.close)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.dismissButton.addTarget(self, action: #selector(self.dismiss(_:)), for: .touchUpInside)
        self.prepareNavigationBar()
    }
    
    
    func dismiss(_ sender: IconButton) {
        self.dismiss(animated: true) { 
            
            
        }
    }
    
    
}


extension PresentedRootViewController {
    func prepareNavigationBar() {
        self.navigationItem.title = "Presented View"
        
        self.navigationItem.leftViews = [self.dismissButton]
    }
}
