//
//  StackViewLayoutable.swift
//  UIKitBuilder
//
//  Created by Nghia on 4/26/20.
//  Copyright © 2020 Nghia. All rights reserved.
//

import UIKit

public protocol StackViewLayoutable {}

extension StackViewLayoutable where Self: UIStackView {
    @discardableResult public func addArranged<T: UIView>(_ child: T, configuration: ((T) -> Void)? = nil) -> Self {
        addArrangedSubview(child)
        configuration?(child)
        return self
    }
}

extension UIStackView: StackViewLayoutable {}
