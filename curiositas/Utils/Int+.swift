//
//  Int+.swift
//  curiositas
//
//  Created by alexdamascena on 15/09/22.
//

import UIKit

enum Device {
    
    case iphoneSE
    
    static let baseScreenSize: Device = .iphoneSE
    
    var rawValue: CGSize {
        switch self {
        case .iphoneSE:
            return CGSize(width: 320, height: 568)
        }
    }
}

enum Size {
    case width
    case height
}

extension Int {
    
    func adapted(dimensionSize: CGFloat, to dimension: Size) -> CGFloat {
        let screenWidth = UIScreen.main.bounds.size.width
        let screenHeight = UIScreen.main.bounds.height
        
        var ratio: CGFloat = 0
        var resultDimensionSise: CGFloat = 0.0
        
        switch dimension {
        case .width:
            ratio = dimensionSize / Device.baseScreenSize.rawValue.width
            resultDimensionSise = screenWidth * ratio
        case .height:
            ratio = dimensionSize / Device.baseScreenSize.rawValue.height
            resultDimensionSise = screenHeight * ratio
        }
        
        return resultDimensionSise
    }
    
    var VAdapted: CGFloat {
        adapted(dimensionSize: CGFloat(self), to: .height)
    }
    
    var HAdapted: CGFloat {
        adapted(dimensionSize: CGFloat(self), to: .width)
    }
}
