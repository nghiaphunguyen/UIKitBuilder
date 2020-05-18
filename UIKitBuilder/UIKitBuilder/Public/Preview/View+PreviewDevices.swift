//
//  View+PreviewDevices.swift
//  previewUI
//
//  Created by Nghia on 15/10/19.
//  Copyright © 2019 Nghia. All rights reserved.
//

#if canImport(SwiftUI)
import SwiftUI

@available(iOS 13.0, *)
extension View {
    public func previews(to devices: [PreviewDevice.Model], prefix: String? = nil) -> some View {
        ForEach(devices, id: \.rawValue) { device in
            self
                .previewDevice(device.previewDevice)
                .previewDisplayName([prefix, device.displayName]
                    .compactMap { $0 }.joined(separator: "-"))
        }
    }
    
    public func previewsToAllDevices(prefix: String? = nil) -> some View {
        return previews(to: PreviewDevice.Model.allCases, prefix: prefix)
    }
}
#endif
