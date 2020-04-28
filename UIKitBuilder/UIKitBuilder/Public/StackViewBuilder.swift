//
//  StackViewBuilder.swift
//  LiteUIBuilder
//
//  Created by Nghia Nguyen on 8/15/19.
//  Copyright © 2019 Nghia Nguyen. All rights reserved.
//

import UIKit

@_functionBuilder
public struct StackViewBuilder {
    public static func buildBlock(_ views: UIView...) -> [UIView] {
        return views
    }

    public static func buildBlock(_ view: UIView) -> UIView {
        return view
    }
}
