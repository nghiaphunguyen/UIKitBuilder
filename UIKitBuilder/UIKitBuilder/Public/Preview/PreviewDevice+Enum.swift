//
//  Copyright © 2019 Nghia. All rights reserved.
//

#if canImport(SwiftUI)
import SwiftUI

@available(iOS 13.0, *)
extension PreviewDevice {
    public enum Model: String, CaseIterable {
        case iphone11ProMax = "iPhone12,5"
        case iphone11Pro = "iPhone12,3"
        case iphone11 = "iPhone12,1"
        case iphone8 = "iPhone10,1"
        case iphone8Plus = "iPhone10,2"
        case iphoneSE = "iPhone8,4"
        
        var displayName: String {
            switch self {
            case .iphone11ProMax: return "Iphone 11 Pro Max"
            case .iphone11Pro: return "Iphone 11 Pro"
            case .iphone11: return "Iphone 11"
            case .iphone8: return "Iphone 8"
            case .iphone8Plus: return "Iphone 8 Plus"
            case .iphoneSE: return "Iphone SE"
            }
        }
        
        var previewDevice: PreviewDevice {
            return PreviewDevice(rawValue: self.rawValue)
        }
    }
}
#endif
