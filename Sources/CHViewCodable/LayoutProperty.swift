//
//  File.swift
//  
//
//  Created by Carlos on 15/04/24.
//

import Foundation
import UIKit

public struct LayoutProperty<Anchor: LayoutAnchor> {
    internal let anchor: Anchor
}

extension LayoutProperty {
    @discardableResult
    public func equal(
        to anotherAnchor: Anchor,
        offsetBy constant: CGFloat = 0,
        priority: UILayoutPriority = .required
    ) -> NSLayoutConstraint {
        let constraint = anchor.constraint(equalTo: anotherAnchor, constant: constant)
        constraint.priority = priority
        constraint.isActive = true
        return constraint
    }

    @discardableResult
    public func greaterThanOrEqual(
        to anotherAnchor: Anchor,
        offsetBy constant: CGFloat = 0,
        priority: UILayoutPriority = .required
    ) -> NSLayoutConstraint {
        let constraint = anchor.constraint(greaterThanOrEqualTo: anotherAnchor, constant: constant)
        constraint.priority = priority
        constraint.isActive = true
        return constraint
    }

    @discardableResult
    public func lessThanOrEqual(
        to anotherAnchor: Anchor,
        offsetBy constant: CGFloat = 0,
        priority: UILayoutPriority = .required
    ) -> NSLayoutConstraint {
        let constraint = anchor.constraint(lessThanOrEqualTo: anotherAnchor, constant: constant)
        constraint.priority = priority
        constraint.isActive = true
        return constraint
    }
}

extension LayoutProperty where Anchor: LayoutDimension {
    @discardableResult
    public func equal(
        toConstant constant: CGFloat,
        priority: UILayoutPriority = .required
    ) -> NSLayoutConstraint {
        let constraint = anchor.constraint(equalToConstant: constant)
        constraint.priority = priority
        constraint.isActive = true
        return constraint
    }

    @discardableResult
    public func greaterThanOrEqual(
        toConstant constant: CGFloat,
        priority: UILayoutPriority = .required
    ) -> NSLayoutConstraint {
        let constraint = anchor.constraint(greaterThanOrEqualToConstant: constant)
        constraint.priority = priority
        constraint.isActive = true
        return constraint
    }

    @discardableResult
    public func lessThanOrEqual(
        toConstant constant: CGFloat,
        priority: UILayoutPriority = .required
    ) -> NSLayoutConstraint {
        let constraint = anchor.constraint(lessThanOrEqualToConstant: constant)
        constraint.priority = priority
        constraint.isActive = true
        return constraint
    }
}

