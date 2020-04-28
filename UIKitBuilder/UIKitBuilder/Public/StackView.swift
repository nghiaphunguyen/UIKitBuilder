//
//  StackView.swift
//  UIKitBuilder
//
//  Created by Nghia on 4/26/20.
//  Copyright © 2020 Nghia. All rights reserved.
//

import UIKit

public class StackView: UIStackView {

    public init(
        axis: NSLayoutConstraint.Axis,
        distribution: UIStackView.Distribution,
        alignment: UIStackView.Alignment,
        spacing: CGFloat,
        layoutMargins: UIEdgeInsets,
        arrangedSubviews: [UIView]) {
        super.init(frame: .zero)
        arrangedSubviews.forEach { self.addArrangedSubview($0) }
        self.axis = axis
        self.alignment = alignment
        self.distribution = distribution
        self.spacing = spacing
        isLayoutMarginsRelativeArrangement = true
        self.layoutMargins = layoutMargins
    }

    public required init(coder: NSCoder) {
        super.init(coder: coder)
    }
}
