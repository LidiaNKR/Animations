//
//  DataManager.swift
//  Animations
//
//  Created by Лидия Ладанюк on 06.05.2023.
//

import Spring

class DataManager {
    
    static let shared = DataManager()
    
    //Присваиваем все названия анимаций, подписав исходное перечисление на CaseIterable
    let animations = Spring.AnimationPreset.allCases
    
    //Присваиваем все названия кривых, подписав исходное перечисление на CaseIterable
    let curves = Spring.AnimationCurve.allCases
    
    init () {}
}
