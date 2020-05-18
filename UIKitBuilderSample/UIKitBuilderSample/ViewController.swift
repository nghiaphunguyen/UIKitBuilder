//
//  ViewController.swift
//  UIKitBuilderSample
//
//  Created by Nghia on 4/26/20.
//  Copyright © 2020 Nghia. All rights reserved.
//

import UIKit
import UIKitBuilder


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupView()
    }
    
    private var body: UIView {
        HStackView(alignment: .center, layoutMargins: UIEdgeInsets(inset: 8)) {
            CardView()
        }
    }
    
    private func setupView() {
        view.add(body) {
            $0.translatesAutoresizingMaskIntoConstraints = false
            $0.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
            $0.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
            $0.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
            $0.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        }
        
        if #available(iOS 13.0, *) {
//            CardView().preview.config(width: UIScreen.main.bounds.width)
        } else {
            // Fallback on earlier versions
        }
    }
}

extension UIEdgeInsets {
    init(inset: CGFloat) {
        self.init(top: inset, left: inset, bottom: inset, right: inset)
    }
}
