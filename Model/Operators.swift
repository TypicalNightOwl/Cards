//
//  Operators.swift
//  Card
//
//  Created by Ryan Westhoelter on 9/9/24.
//

import SwiftUI

func + (left: CGSize, right: CGSize) -> CGSize {
    CGSize(
        width: left.width + right.width,
        height: left.height + right.height)
}

func * (left: CGSize, right: CGFloat) -> CGSize {
  CGSize(
    width: left.width * right,
    height: left.height * right)
}

func *= (left: inout CGSize, right: Double) {
  left = CGSize(
    width: left.width * right,
    height: left.height * right)
}

func / (left: CGSize, right: CGFloat) -> CGSize {
  CGSize(
    width: left.width / right,
    height: left.height / right)
}