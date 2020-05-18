//
//  PreviewSize.swift
//  UIKitBuilder
//
//  Created by Nghia on 5/14/20.
//  Copyright © 2020 Nghia. All rights reserved.
//

import UIKit

/*
 PreviewConstraint defines to setup constraint for testing instance in view controller
 .auto: Auto sizing dimension with intrinsic size
 .constant: Set constraint with implict constant
 .relative(multiple, constant): Set constraint with parent view
 */
public enum PreviewConstraint {
    case auto
    case constant(value: CGFloat)
    case relative(multiple: CGFloat, constant: CGFloat)

    public static var relativeEqual: PreviewConstraint {
        return .relative(multiple: 1, constant: 0)
    }
    
    public func getDimensionValue(screenValue: CGFloat) -> CGFloat {
        switch self {
        case .auto:
            return 0
        case let .constant(value):
            return value
        case let .relative(multiple, constant):
            return multiple * screenValue + constant
        }
    }
    
    public func getFittingPriority() -> UILayoutPriority {
        switch self {
        case .auto:
            return .fittingSizeLevel
        case .constant, .relative:
            return .required
        }
    }
}

/*
 PreviewSize defines width and height constraint for testing instance
 */
public struct PreviewSize {
    let width: PreviewConstraint
    let height: PreviewConstraint

    public init(width: PreviewConstraint, height: PreviewConstraint) {
        self.width = width
        self.height = height
    }

    static var `auto`: PreviewSize { return PreviewSize(width: .auto, height: .auto) }
}
