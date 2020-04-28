//
//  WrapperView.swift
//  UIKitBuilder
//
//  Created by Nghia on 4/26/20.
//  Copyright © 2020 Nghia. All rights reserved.
//

import UIKit

public class WrapperView<T: UIView>: UIView {
    public let content: T
    
    public private(set) var edgesConstraints = [NSLayoutConstraint]()
    
    public required init(content: T) {
        self.content = content
        super.init(frame: .zero)
        
        add(content) {
            $0.translatesAutoresizingMaskIntoConstraints = false
            let leadingConstraint = $0.leadingAnchor.constraint(equalTo: self.leadingAnchor)
            let trailingConstraint = $0.trailingAnchor.constraint(equalTo: self.trailingAnchor)
            let topConstraint = $0.topAnchor.constraint(equalTo: self.topAnchor)
            let bottomConstraint = $0.bottomAnchor.constraint(equalTo: self.bottomAnchor)
            
            self.edgesConstraints = [leadingConstraint, topConstraint, bottomConstraint, trailingConstraint]
            self.edgesConstraints.forEach { $0.isActive = true }
        }
    }
    
    public required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
