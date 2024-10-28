//
//  Cylinder.swift
//  GeometricFigures
//
//  Created by Connor Engel on 2024-10-28.
//

import Foundation
protocol Describable {
    var description: String { get }
}
// Define structure
struct Cylinder: Describable {
    //Stored Property
    var radius: Double
    var height: Double
    
    //Computed Properties
    var diameter: Double
    {
        return radius * 2
    }
    
    var base : Double
    {
        return radius * radius * Double.pi
    }
    var lateralSurface : Double
    {
        return 2 * Double.pi * radius * height
    }
    var totalArea : Double
    {
        return  lateralSurface + 2 * base
    }
    var volume : Double
    {
        return base * height
    }
    var description: String {
        return "The radius is \(radius) units. The height is \(height) units. The total area is \(totalArea) units squared. The volume is \(volume) units cubed"
    }
}
