//
//  PresentedNavigationController.swift
//  NovigationTest
//
//  Created by Jon Vogel on 3/16/17.
//  Copyright © 2017 Jon Vogel. All rights reserved.
//

import Material


class PresentedNavigationController: NavigationController {
    
    open override func prepare() {
        super.prepare()
        guard let v = navigationBar as? NavigationBar else {
            return
        }
        
        v.depthPreset = .none
        v.dividerColor = Color.grey.lighten3
    }
    
}
