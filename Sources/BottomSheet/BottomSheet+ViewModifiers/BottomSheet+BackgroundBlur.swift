//
//  BottomSheet+BackgroundBlur.swift
//
//  Created by Lucas Zischka.
//  Copyright © 2022 Lucas Zischka. All rights reserved.
//

import SwiftUI

public extension BottomSheet {
    
    /// Adds a fullscreen blur layer below the BottomSheet.
    ///
    /// The opacity of the layer is proportional to the height of the BottomSheet.
    /// The material can be changed using the `.backgroundBlurMaterial()` modifier.
    ///
    /// - Parameters:
    ///   - bool: A boolean whether the option is enabled.
    ///
    /// - Returns: A view that has a blur layer below the BottomSheet.
    func enableBackdrop(_ bool: Bool = true) -> BottomSheet {
        self.configuration.isBackgroundBlurEnabled = bool
        return self
    }
    
    
    /// Adds a fullscreen blur layer below the BottomSheet.
    ///
    /// The opacity of the layer is proportional to the height of the BottomSheet.
    ///
    /// - Parameters:
    ///   - customView: Custom view that should be presented
    ///
    /// - Returns: A view that has a configured blur layer below the BottomSheet.
    func backdrop(_ backdropView: BottomSheetBlurBackground) -> BottomSheet {
        self.configuration.backdropView = backdropView
        return self
    }
    
    /// Adds a fullscreen blur layer below the BottomSheet.
    ///
    /// The opacity of the layer is proportional to the height of the BottomSheet.
    ///
    /// - Parameters:
    ///   - customView: Custom view that should be presented
    ///
    /// - Returns: A view that has a configured blur layer below the BottomSheet.
    func backdropClick(_ click: @escaping () -> Void) -> BottomSheet {
        self.configuration.backdropClick = click
        return self
    }
    
    
    /// Adds a fullscreen blur layer below the BottomSheet.
    ///
    /// The opacity of the layer is proportional to the height of the BottomSheet.
    /// The material can be changed using the `.backgroundBlurMaterial()` modifier.
    ///
    /// - Parameters:
    ///   - startPoint: StartPoint of the background blur relative to the current bottomSheetPosition
    ///
    /// - Returns: A view that has a configured blur layer below the BottomSheet.
    func backdropStartPoint(_ startPoint: BottomSheetPosition?) -> BottomSheet {
        self.configuration.backdropStartPoint = startPoint
        return self
    }
    
    
    /// Changes the material of the blur layer.
    ///
    /// Changing the material does not affect whether the blur layer is shown.
    /// To toggle the blur layer please use the `.enableBackgroundBlur()` modifier.
    ///
    /// - Parameters:
    ///   - material: The new material.
    ///
    /// - Returns: A view with a different material of the blur layer.
    func backgroundBlurMaterial(_ material: VisualEffect) -> BottomSheet {
        self.configuration.backgroundBlurMaterial = material
        return self
    }
}
