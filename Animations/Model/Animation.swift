//
//  Animation.swift
//  Animations
//
//  Created by Лидия Ладанюк on 06.05.2023.
//

struct Animation {
    
    //Модель с параментрами анимации
    let name: String
    let curve: String
    let force: Float
    let duration: Float
    let delay: Float
    
    //Выводим описание анимации с указанием ее значений
    var description: String {
        """
        preset: \(name)
        curve: \(curve)
        force: \(String(format: "%.02f", force))
        duration: \(String(format: "%.02f", duration))
        delay: \(String(format: "%.02f", delay))
        """
    }
    
    //Генерируем рандомные значения для параментров анимации
    static func getRandomAnimation() -> Animation {
        Animation(name: DataManager.shared.animations.randomElement()?.rawValue ?? "slideLeft",
                  curve: DataManager.shared.curves.randomElement()?.rawValue ?? "easeIn",
                  force: Float.random(in: 1...2),
                  duration: Float.random(in: 1...2),
                  delay: Float.random(in: 0.1...0.4))
    }
}

