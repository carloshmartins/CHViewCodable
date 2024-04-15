//
//  LayoutDimensionProperty.swift
//
//
//  Created by Carlos on 15/04/24.
//

import Foundation

public struct LayoutDimensionProperty<Anchor: LayoutDimension> {
    let width: LayoutProperty<Anchor>
    let height: LayoutProperty<Anchor>
}
