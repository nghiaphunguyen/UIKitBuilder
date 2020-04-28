//
//  CardView.swift
//  UIKitBuilderSample
//
//  Created by Nghia on 4/26/20.
//  Copyright © 2020 Nghia. All rights reserved.
//

import UIKitBuilder
import UIKit

final class CardView: PureView {
    private let titleLabel = UILabel().configure {
        $0.text = "Nghia Nguyen"
        $0.font = .systemFont(ofSize: 18, weight: .semibold)
    }
    
    private let subtitleLabel = UILabel().configure {
        $0.text = "iOS Developer"
        $0.font = .systemFont(ofSize: 14, weight: .regular)
    }
    
    private let profileImageView = UIImageView().configure {
        let size = CGSize(width: 60, height: 60)
        $0.heightAnchor.constraint(equalToConstant: size.width).isActive = true
        $0.widthAnchor.constraint(equalToConstant: size.height).isActive = true
        $0.backgroundColor = .lightGray
        $0.layer.cornerRadius = size.width / 2
    }
    
    override var body: UIView {
        HStackView(alignment: .center, spacing: 10, layoutMargins: UIEdgeInsets(inset: 8)) {
            self.profileImageView
            VStackView(spacing: 4) {
                self.titleLabel
                self.subtitleLabel
            }
        }
    }
    
    override func configure() {
        backgroundColor = .systemGray5
        layer.cornerRadius = 4
    }
}
