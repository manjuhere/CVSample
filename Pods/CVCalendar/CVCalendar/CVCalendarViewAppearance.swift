//
//  CVCalendarViewAppearance.swift
//  CVCalendar
//
//  Created by E. Mozharovsky on 12/26/14.
//  Copyright (c) 2014 GameApp. All rights reserved.
//

import UIKit

public final class CVCalendarViewAppearance: NSObject {

    public override init() {
        super.init()
    }

    /// Default rendering options.
    public var spaceBetweenWeekViews: CGFloat? = 0
    public var spaceBetweenDayViews: CGFloat? = 0

    /// Default text options.
    public var dayLabelPresentWeekdayInitallyBold: Bool? = true
    @objc public var dayLabelWeekdayFont: UIFont? = UIFont(name: "Avenir", size: 18)
    @objc public var dayLabelPresentWeekdayFont: UIFont? = UIFont(name: "Avenir", size: 18)
    @objc public var dayLabelPresentWeekdayBoldFont: UIFont? = UIFont(name: "Avenir-Heavy", size: 18)
    @objc public var dayLabelPresentWeekdayHighlightedFont: UIFont? =
        UIFont(name: "Avenir-Heavy", size: 18)
    @objc public var dayLabelPresentWeekdaySelectedFont: UIFont? = UIFont(name: "Avenir-Heavy", size: 18)
    @objc public var dayLabelWeekdayHighlightedFont: UIFont? = UIFont(name: "Avenir-Heavy", size: 18)
    @objc public var dayLabelWeekdaySelectedFont: UIFont? = UIFont(name: "Avenir-Heavy", size: 18)

    /// Default text color.
    @objc public var dayLabelWeekdayDisabledColor: UIColor? = .gray
    @objc public var dayLabelWeekdayInTextColor: UIColor? = .black
    @objc public var dayLabelWeekdayOutTextColor: UIColor? = .gray
    @objc public var dayLabelWeekdayHighlightedTextColor: UIColor? = .white
    @objc public var dayLabelWeekdaySelectedTextColor: UIColor? = .white
    @objc public var dayLabelPresentWeekdayTextColor: UIColor? = .red
    @objc public var dayLabelPresentWeekdayHighlightedTextColor: UIColor? = .white
    @objc public var dayLabelPresentWeekdaySelectedTextColor: UIColor? = .white

    /// Default text size.
    public var dayLabelWeekdayTextSize: CGFloat? = 18
    public var dayLabelWeekdayHighlightedTextSize: CGFloat? = 20
    public var dayLabelWeekdaySelectedTextSize: CGFloat? = 20
    public var dayLabelPresentWeekdayTextSize: CGFloat? = 18
    public var dayLabelPresentWeekdayHighlightedTextSize: CGFloat? = 20
    public var dayLabelPresentWeekdaySelectedTextSize: CGFloat? = 20

    /// Default highlighted state background & alpha.
    @objc public var dayLabelWeekdayHighlightedBackgroundColor: UIColor? = .colorFromCode(0x34AADC)
    public var dayLabelWeekdayHighlightedBackgroundAlpha: CGFloat? = 0.8
    @objc public var dayLabelPresentWeekdayHighlightedBackgroundColor: UIColor? = .colorFromCode(0xFF5E3A)
    public var dayLabelPresentWeekdayHighlightedBackgroundAlpha: CGFloat? = 0.8

    /// Default selected state background & alpha.
    @objc public var dayLabelWeekdaySelectedBackgroundColor: UIColor? = .colorFromCode(0x1D62F0)
    public var dayLabelWeekdaySelectedBackgroundAlpha: CGFloat? = 0.8
    @objc public var dayLabelPresentWeekdaySelectedBackgroundColor: UIColor? = .colorFromCode(0xFF3B30)
    public var dayLabelPresentWeekdaySelectedBackgroundAlpha: CGFloat? = 0.8

    // Default dot marker color.
    @objc public var dotMarkerColor: UIColor? = .white

    @objc public weak var delegate: CVCalendarViewAppearanceDelegate?
 {
        didSet {
            self.setupAppearance()
        }
    }

    @objc public func setupAppearance() {
        if let delegate = delegate {
            spaceBetweenWeekViews ~> delegate.spaceBetweenWeekViews?()
            spaceBetweenDayViews ~> delegate.spaceBetweenDayViews?()

            dayLabelPresentWeekdayInitallyBold ~> delegate.dayLabelPresentWeekdayInitallyBold?()
            dayLabelWeekdayFont ~> delegate.dayLabelWeekdayFont?()
            dayLabelPresentWeekdayFont ~> delegate.dayLabelPresentWeekdayFont?()
            dayLabelPresentWeekdayBoldFont ~> delegate.dayLabelPresentWeekdayBoldFont?()
            dayLabelPresentWeekdayHighlightedFont ~>
                delegate.dayLabelPresentWeekdayHighlightedFont?()
            dayLabelPresentWeekdaySelectedFont ~> delegate.dayLabelPresentWeekdaySelectedFont?()
            dayLabelWeekdayHighlightedFont ~> delegate.dayLabelWeekdayHighlightedFont?()
            dayLabelWeekdaySelectedFont ~> delegate.dayLabelWeekdaySelectedFont?()

            dayLabelWeekdayDisabledColor ~> delegate.dayLabelWeekdayDisabledColor?()
            dayLabelWeekdayInTextColor ~> delegate.dayLabelWeekdayInTextColor?()
            dayLabelWeekdayOutTextColor ~> delegate.dayLabelWeekdayOutTextColor?()
            dayLabelWeekdayHighlightedTextColor ~> delegate.dayLabelWeekdayHighlightedTextColor?()
            dayLabelWeekdaySelectedTextColor ~> delegate.dayLabelWeekdaySelectedTextColor?()
            dayLabelPresentWeekdayTextColor ~> delegate.dayLabelPresentWeekdayTextColor?()
            dayLabelPresentWeekdayHighlightedTextColor ~>
                delegate.dayLabelPresentWeekdayHighlightedTextColor?()
            dayLabelPresentWeekdaySelectedTextColor ~>
                delegate.dayLabelPresentWeekdaySelectedTextColor?()

            dayLabelWeekdayTextSize ~> delegate.dayLabelWeekdayTextSize?()
            dayLabelWeekdayHighlightedTextSize ~> delegate.dayLabelWeekdayHighlightedTextSize?()
            dayLabelWeekdaySelectedTextSize ~> delegate.dayLabelWeekdaySelectedTextSize?()
            dayLabelPresentWeekdayTextSize ~> delegate.dayLabelPresentWeekdayTextSize?()
            dayLabelPresentWeekdayHighlightedTextSize ~>
                delegate.dayLabelPresentWeekdayHighlightedTextSize?()
            dayLabelPresentWeekdaySelectedTextSize ~>
                delegate.dayLabelPresentWeekdaySelectedTextSize?()

            dayLabelWeekdayHighlightedBackgroundColor ~>
                delegate.dayLabelWeekdayHighlightedBackgroundColor?()
            dayLabelWeekdayHighlightedBackgroundAlpha ~>
                delegate.dayLabelWeekdayHighlightedBackgroundAlpha?()
            dayLabelPresentWeekdayHighlightedBackgroundColor ~>
                delegate.dayLabelPresentWeekdayHighlightedBackgroundColor?()
            dayLabelPresentWeekdayHighlightedBackgroundAlpha ~>
                delegate.dayLabelPresentWeekdayHighlightedBackgroundAlpha?()

            dayLabelWeekdaySelectedBackgroundColor ~>
                delegate.dayLabelWeekdaySelectedBackgroundColor?()
            dayLabelWeekdaySelectedBackgroundAlpha ~>
                delegate.dayLabelWeekdaySelectedBackgroundAlpha?()
            dayLabelPresentWeekdaySelectedBackgroundColor ~>
                delegate.dayLabelPresentWeekdaySelectedBackgroundColor?()
            dayLabelPresentWeekdaySelectedBackgroundAlpha ~>
                delegate.dayLabelPresentWeekdaySelectedBackgroundAlpha?()
            dotMarkerColor ~> delegate.dotMarkerColor?()
        }
    }}


infix operator ~>
@discardableResult
public func ~> <T: Any>(lhs: inout T?, rhs: T?) -> T? {
    if lhs != nil && rhs != nil {
        lhs = rhs
    }

    return lhs
}

extension UIColor {
    @objc public static func colorFromCode(_ code: Int) -> UIColor {
        let red = CGFloat(((code & 0xFF0000) >> 16)) / 255
        let green = CGFloat(((code & 0xFF00) >> 8)) / 255
        let blue = CGFloat((code & 0xFF)) / 255

        return UIColor(red: red, green: green, blue: blue, alpha: 1)
    }
}
