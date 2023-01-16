//
//  CustomCorners.swift
//  ClothsApp
//
//  Created by Intervest on 2023-01-16.
//

import SwiftUI

struct CustomCorners: Shape {
    var corners: UIRectCorner
    var radius: CGFloat
    func path(in rect: CGRect)-> Path{
        
        let path = UIBezierPath(roundedRect: rect,byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        
        return Path(path.cgPath)
        
        
    }
}

