//
//  CylinderView.swift
//  GeometricFigures
//
//  Created by Connor Engel on 2024-10-28.
//

import SwiftUI

struct CylinderView: View {
    
    // MARK: Stored Properties
    @State var currentCylinder = Cylinder(radius: 10, height: 20)
    
    // MARK: Computed properties
    var body: some View {
        VStack{
            
            // add an image
            
            // Label that describes what slider is for
            Text("Radius")
           
            
            // make a slider control for user imput
            Slider(value: $currentCylinder.radius, in: 1...100, step: 1.0)
            Text("Radius: \(currentCylinder.radius.formatted())")
            Text("Height")
            Slider(value: $currentCylinder.height, in: 1...100, step: 1.0)
            Text("Height: \(currentCylinder.height.formatted())")
            // Label that shows current slider value
            
        }
    }
}
    #Preview {
        CylinderView()
    }

