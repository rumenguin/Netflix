//
//  Extensions.swift
//  Netflix
//
//  Created by RUMEN GUIN on 05/03/23.
//

import Foundation

extension String {
    
    func capitalizeFirstLetter() -> String {
        return self.prefix(1).uppercased() + self.lowercased().dropFirst()
    }
    
}
