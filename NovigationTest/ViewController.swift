//
//  ViewController.swift
//  NovigationTest
//
//  Created by Jon Vogel on 3/16/17.
//  Copyright © 2017 Jon Vogel. All rights reserved.
//

import Material


class ViewController: UIViewController {

    
    let button = FlatButton(frame: CGRect(x: 50, y: 50, width: 100, height: 50))
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(self.button)
        self.button.backgroundColor = UIColor.blue
        self.button.setTitleColor(UIColor.white, for: .normal)
        self.button.setTitle("Present", for: .normal)
        self.button.addTarget(self, action: #selector(self.present(_:)), for: .touchUpInside)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func present(_ sender: FlatButton) {
        guard let navigationVC = self.storyboard?.instantiateViewController(withIdentifier: "NAVIGATION") as? PresentedNavigationController else {
            return
        }
        
        self.present(navigationVC, animated: true) { 
            
            
            
        }
        
    }

}

