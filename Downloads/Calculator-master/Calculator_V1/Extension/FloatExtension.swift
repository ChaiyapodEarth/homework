//
//  FloatExtension.swift
//  Calculator_V1
//
//  Created by Earth on 16/5/2563 BE.
//  Copyright © 2563 Kittinun Chobtham. All rights reserved.
//

import Foundation

 extension Float {
     var clean: String {
        return self.truncatingRemainder(dividingBy: 1) == 0 ? String(format: "%.0f", self) : String(self)
     }
 }

