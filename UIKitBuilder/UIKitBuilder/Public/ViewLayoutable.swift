//
//  ViewLayoutable.swift
//  LiteUIBuilder
//
//  Created by Nghia Nguyen on 8/15/19.
//  Copyright © 2019 Nghia Nguyen. All rights reserved.
//

import UIKit

public protocol ViewLayoutable {}

extension ViewLayoutable where Self: UIView {
    @discardableResult public func add<T: UIView>(_ child: T, configuration: ((T) -> Void)? = nil) -> Self {
        addSubview(child)
        configuration?(child)
        return self
    }
    
    @discardableResult public func add(to superview: UIView, configuration: ((Self) -> Void)? = nil) -> Self {
        superview.add(self, configuration: configuration)
        return self
    }
    
    @discardableResult public func configure(configuration: (Self) -> Void) -> Self {
        configuration(self)
        return self
    }
    
    @discardableResult public func wrap(configuration: (WrapperView<Self>) -> Void) -> WrapperView<Self> {
        let view = WrapperView<Self>(content: self)
        configuration(view)
        return view
    }
    
    @discardableResult public func set<T>(_ keyPath: ReferenceWritableKeyPath<Self, T>, _ value: T) -> Self {
        self[keyPath: keyPath] = value
        return self
    }
    
    @available(iOS 13.0, *)
    public var preview: PreviewUIView<Self> {
        PreviewUIView(view: self)
    }
}

extension UIView: ViewLayoutable {}
