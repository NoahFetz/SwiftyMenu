//
//  SwiftyMenuAttributes+RowStyle.swift
//
//  Copyright (c) 2019-2024 Karim Ebrahem (https://www.linkedin.com/in/karimebrahem)
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

import Foundation
import UIKit

public extension SwiftyMenuAttributes {

    /** Describes the style for row of the menu */
    enum RowStyle {

        /** Row with default color, background color and selected color */
        case `default`

        /** Row with color, background color and selected color */
        case value(height: Int, backgroundColor: UIColor, selectedColor: UIColor)

        var rowStyleValues: (height: Int, backgroundColor: UIColor, selectedColor: UIColor) {
            switch self {
            case let .value(height, backgroundColor, selectedColor):
                return (height: height, backgroundColor: backgroundColor, selectedColor: selectedColor)
            case .default:
                return (height: 35, backgroundColor: .white, selectedColor: .clear)
            }
        }
    }
}
