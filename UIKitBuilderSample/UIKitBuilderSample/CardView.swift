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
    private let titleLabel = UILabel()
        .set(\.text, "Nghia Nguyen")
        .set(\.font, .systemFont(ofSize: 18, weight: .semibold))
    
    private let subtitleLabel = UILabel()
        .set(\.text, "iOS Developer")
        .set(\.font, .systemFont(ofSize: 14, weight: .regular))
    
    private let profileImageView = UIImageView()
        .configure {
            let size = CGSize(width: 60, height: 60)
            $0.heightAnchor.constraint(equalToConstant: size.height).isActive = true
            $0.widthAnchor.constraint(equalToConstant: size.width).isActive = true
            $0.backgroundColor = .lightGray
            $0.layer.cornerRadius = size.width / 2
    }
    
    override var body: UIView {
        HStackView(alignment: .center, spacing: 8, layoutMargins: UIEdgeInsets(inset: 8)) {
            profileImageView
            VStackView(spacing: 4) {
                titleLabel.set(\.numberOfLines, 2)
                subtitleLabel
            }
        }
    }
    
    override func configure() {
        backgroundColor = .gray
        layer.cornerRadius = 4
    }
}

extension CardView: ViewConfigurable {
    struct Model {
        let title: String
        let subtitle: String
        let imageBackgroundColor: UIColor
    }
    
    func configure(viewModel: Model) {
        titleLabel.text = viewModel.title
        subtitleLabel.text = viewModel.subtitle
        profileImageView.backgroundColor = viewModel.imageBackgroundColor
    }
}

#if canImport(SwiftUI) && DEBUG
import SwiftUI
@available(iOS 13.0, *)
struct CardView_Preview: PreviewProvider {
    static var previewsModels: [(String, CardView.Model)] {
        [
            ("Short title", CardView.Model(
                title: "Nghia",
                subtitle: "iOS Developer",
                imageBackgroundColor: .lightGray)),
            ("Long title", CardView.Model(
                title: "Nghia Nghia Nghia Nghia Nghia Nghia Nghia Nghia",
                subtitle: "iOS Developer",
                imageBackgroundColor: .lightGray))
        ]
    }
    
    static var previews: some View {
        ForEach(previewsModels, id: \.0) {
            CardView()
                .set(viewModel: $0.1)
                .preview
                .set(previewSize: .init(width: .relativeEqual, height: .auto))
                .previewLayout(.sizeThatFits)
                .previews(to: [.iphoneSE, .iphone8, .iphone11], prefix: $0.0)
        }
    }
}
#endif
