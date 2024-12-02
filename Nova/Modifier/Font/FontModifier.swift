//
//  FontModifier.swift
//  Nova
//
//  Created by Abcom on 02/12/24.
//

import SwiftUI

extension Font {
    static func customFont(name: String, size: CGFloat) -> Font {
        return Font.custom(name, size: size)
    }
    
    static var titleFont: Font {
        return .customFont(name:  "Poppins-Bold", size: 24)
    }
    
    static var bodyFont: Font {
        return .customFont(name: "YourCustomFontName-Regular", size: 16)
    }
    
    static var captionFont: Font {
        return .customFont(name: "YourCustomFontName-Light", size: 12)
    }
    
    
    static func boldFont(size: CGFloat) -> Font {
            return .customFont(name: "Poppins-Bold", size: size)
        }
    
    static func regularFont(size: CGFloat) -> Font {
            return .customFont(name: "Poppins-Regular", size: size)
        }
    
    static func mediumFont(size: CGFloat) -> Font {
            return .customFont(name: "Poppins-Medium", size: size)
        }
    
    static func semiboldFont(size: CGFloat) -> Font {
            return .customFont(name: "Poppins-SemiBold", size: size)
        }
    
}
