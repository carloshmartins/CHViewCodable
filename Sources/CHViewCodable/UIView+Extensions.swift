//
//  UIView+Extensions.swift
//  
//
//  Created by Carlos Henrique Martins on 10/13/20.
//

import UIKit

@available(iOS 9.0, *)
extension UIView {

    /// Setup a View related to its superview based on UIEdegedInsets.
    ///
    /// - Parameter view: The view to anchor.
    /// - Parameter superview: The superviewview to anchor to.
    /// - Parameter edge: The UIEdgedInsets properties..
    func setupConstraints<T: UIView, Q: UIView>(for view: T, with superview: Q, basedOn edge: UIEdgeInsets )  {
        NSLayoutConstraint.activate([
            view.topAnchor.constraint(equalTo: superview.topAnchor, constant: edge.top),
            view.leftAnchor.constraint(equalTo: superview.leftAnchor, constant: edge.left),
            view.trailingAnchor.constraint(equalTo: superview.trailingAnchor, constant: edge.right),
            view.bottomAnchor.constraint(equalTo: superview.bottomAnchor, constant: edge.bottom)
        ])
    }
}
