//
//  DataManager.swift
//  Animations
//
//  Created by Лидия Ладанюк on 06.05.2023.
//

import Spring

class DataManager {
    
    static let shared = DataManager()
    
    let animations = Spring.AnimationPreset.allCases
    let curves = Spring.AnimationCurve.allCases
    
    init () {}
}
