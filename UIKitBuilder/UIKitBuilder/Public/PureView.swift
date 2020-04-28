//
//  PureView.swift
//  UIKitBuilder
//
//  Created by Nghia on 4/26/20.
//  Copyright © 2020 Nghia. All rights reserved.
//

import UIKit

open class PureView: UIView {
    public override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    public required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }
    
    public var edgesConstraints = [NSLayoutConstraint]()
    
    open var body: UIView {
        return UIView()
    }
    
    open func configure() {}
    
    open func setupView() {
        add(body) {
            $0.translatesAutoresizingMaskIntoConstraints = false
            let leadingConstraint = $0.leadingAnchor.constraint(equalTo: self.leadingAnchor)
            let trailingConstraint = $0.trailingAnchor.constraint(equalTo: self.trailingAnchor)
            let topConstraint = $0.topAnchor.constraint(equalTo: self.topAnchor)
            let bottomConstraint = $0.bottomAnchor.constraint(equalTo: self.bottomAnchor)
            
            self.edgesConstraints = [leadingConstraint, topConstraint, bottomConstraint, trailingConstraint]
            self.edgesConstraints.forEach { $0.isActive = true }
        }
        configure()
    }
}
