//
//  Copyright © 2019 Nghia. All rights reserved.
//

import UIKit

public protocol ViewConfigurable {
    associatedtype Model
    
    func configure(viewModel: Model)
}

extension ViewConfigurable {
    public func set(viewModel: Model) -> Self {
        configure(viewModel: viewModel)
        return self
    }
}
