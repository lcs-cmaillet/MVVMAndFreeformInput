//
//  Power.swift
//  MVVMAndFreeformInput
//
//  Created by Collin Maillet on 2025-03-31.
//

import Foundation

struct Power {
    
    // MARK: STORED PROPERTIES
    
    // The base of the power can hold any numeric value
    var base: Double
    
    // The exponent of a power must be an integer
    var exponent: Int
    
    // MARK: COMPUTED PROPER
     
    // A power is simply a shorter way of expressing
    // repeated multiplication.
    //
    // e.g.: 3^2
    //       = 3 * 3
    //       = 9
    //
    // The base, 3, mutiplied by itself twice, resulting in 9
    //
    // This could also be expressed as:
    //
    // e.g.: 3^2
    //       = 1 * 3 * 3
    //       = 9
    //
    // We will implement code that mimics this second example.
    var result: Double {
        
        // Start by making the solution equal to 1
        var solution = 1.0
        
        // Repeatedly multiply the base by itself
        // as many more times as needed
        for _ in 1...exponent {
            solution *= base
        }
        
        // Return the solution
        return solution
        
    }

    
}
