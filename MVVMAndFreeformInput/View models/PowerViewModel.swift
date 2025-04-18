//
//  PowerViewModel.swift
//  MVVMAndFreeformInput
//
//  Created by Collin Maillet on 2025-04-02.
//

import Foundation

@Observable
class PowerViewModel {
    
    // MARK: Stored properties
    
    // Holds whatever the user has typed in the text fields
    var providedBase: String
    var providedExponent: String
    
    // Holds an appropriate error message, if there was a
    // problem with input provided by the user
    var recoverySuggestion: String = ""
    
    // MARK: Computed properties
    // Holds the evaluated power, when the input provided is valid
    var power: Power? {
        
        // First check that the string in providedBase can
        // be converted into a number
        guard let base = Double(providedBase) else {
            recoverySuggestion = "Please enter a numaric value for the base of the power."
            
            return nil
        }
        
        // now check that the
        // value is more than 0
        guard base > 0 else {
            recoverySuggestion = "Please provide a positive value for the base of the power."
            
            return nil
        }
        
        
        // Now check that the string in providedExponent can be
        // converted into an integer, and that the value is
        // more than or equal to 1
        guard let exponent = Int(providedExponent), exponent >= 1 else {
            recoverySuggestion = "Please provide an integer value of 1 or greater for the exponent."
            
            return nil
        }
        
        // Now that we know the base and exponent have valid values, return the evaluated power
        recoverySuggestion = "" // No error message
        return Power(base: base, exponent: exponent)
        
    }
    
    //MARK: Initalizer(s)
    init(
        providedBase: String = "",
        providedExponent: String = "",
        recoverySuggestion: String = ""
    ) {
        self.providedBase = providedBase
        self.providedExponent = providedBase
        self.recoverySuggestion = providedBase
    }

    
}
