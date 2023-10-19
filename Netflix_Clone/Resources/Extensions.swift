//
//  Extensions.swift
//  Netflix_Clone
//
//  Created by Puneet Bajaj on 10/18/23.
//

import Foundation

extension String{
    func capitalizeFirstLetter()-> String{
        return self.prefix(1).uppercased()+self.lowercased().dropFirst()
    }
}
