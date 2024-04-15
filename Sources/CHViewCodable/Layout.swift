//
//  File.swift
//  
//
//  Created by Carlos on 15/04/24.
//

import UIKit

public protocol LayoutDimension: LayoutAnchor {
    func constraint(equalToConstant c: CGFloat) -> NSLayoutConstraint
    func constraint(greaterThanOrEqualToConstant c: CGFloat) -> NSLayoutConstraint
    func constraint(lessThanOrEqualToConstant c: CGFloat) -> NSLayoutConstraint
}

// MARK: - NSLayoutDimension Extension

extension NSLayoutDimension: LayoutDimension {}

public func == <Anchor: LayoutDimension>(lhs: LayoutProperty<Anchor>, rhs: CGFloat) {
    lhs.equal(toConstant: rhs)
}

public func == <Anchor: LayoutDimension>(lhs: LayoutDimensionProperty<Anchor>, rhs: CGSize) {
    lhs.width.equal(toConstant: rhs.width)
    lhs.height.equal(toConstant: rhs.height)
}

public func >= <Anchor: LayoutDimension>(lhs: LayoutProperty<Anchor>, rhs: CGFloat) {
    lhs.greaterThanOrEqual(toConstant: rhs)
}

public func <= <Anchor: LayoutDimension>(lhs: LayoutProperty<Anchor>, rhs: CGFloat) {
    lhs.lessThanOrEqual(toConstant: rhs)
}
