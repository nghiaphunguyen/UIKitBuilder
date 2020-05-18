//
//  Copyright © 2019 Nghia. All rights reserved.
//

#if canImport(SwiftUI)
import UIKit
import SwiftUI

@available(iOS 13.0, *)
public struct PreviewUIView<T: UIView>: UIViewRepresentable {
    public let wrapped: T

    public init(view: T) {
        self.wrapped = view
    }

    public func makeUIView(context: UIViewRepresentableContext<PreviewUIView<T>>) -> T { wrapped }
    
    public func updateUIView(_ uiView: T, context: UIViewRepresentableContext<PreviewUIView<T>>) {
    }
    
    public func set(
        previewSize: PreviewSize,
        screenSize: CGSize = UIScreen.main.bounds.size) -> some View {
        
        let size = wrapped.systemLayoutSizeFitting(
            CGSize(width: previewSize.width.getDimensionValue(screenValue: screenSize.width),
                   height: previewSize.height.getDimensionValue(screenValue: screenSize.height)),
            withHorizontalFittingPriority: previewSize.width.getFittingPriority(),
            verticalFittingPriority: previewSize.height.getFittingPriority())
        return self.frame(width: size.width, height: size.height)
    }
}
#endif
