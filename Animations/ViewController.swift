//
//  ViewController.swift
//  Animations
//
//  Created by Лидия Ладанюк on 27.02.2021.
//

import Spring

class ViewController: UIViewController {

    // MARK: - IB Outlets
    @IBOutlet weak var animationImageView: SpringView!
    @IBOutlet var animationLabel: UILabel!
    
    
    // MARK: - Private properties
    private var animation = Animation.getRandomAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.layer.contents = #imageLiteral(resourceName: "field").cgImage
        
        animationLabel.text = animation.description
        
    }
    
    // MARK: - IB Actions
    
    ///Настраиваем анимацию для ImageView, при нажатии на кнопку
    @IBAction func animationButtonPressed(_ sender: UIButton) {
        animationLabel.text = animation.description

        animationImageView.animation = animation.name
        animationImageView.force = CGFloat(animation.force)
        animationImageView.duration = CGFloat(animation.duration)
        animationImageView.delay = CGFloat(animation.delay)
        animationImageView.curve = animation.curve
        animationImageView.animate()

        animation = Animation.getRandomAnimation()
        
        //Устанавливаем для заголовка кнопки название анимации
        sender.setTitle("Run \(animation.name)", for: .normal)

    }
    
}

