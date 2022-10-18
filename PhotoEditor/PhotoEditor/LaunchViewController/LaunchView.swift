//
//  LaunchView.swift
//  PhotoEditor
//
//  Created by Aleksandr on 18.10.2022.
//

import UIKit
import Lottie

final class LaunchView: UIView {
    private let animationView: LottieAnimationView = .init(name: "duck")
    private let animationViewSize = CGSize(width: 150, height: 150)
    private let accessLabel: UILabel = .init(frame: .zero)
    private let accessButton: UIButton = .init(frame: .zero)
    private let buttonCornerRadius: CGFloat = 10
    private let accessButtonHeight: CGFloat = 40
    fileprivate func animationConfigure() {
        animationView.contentMode = .scaleAspectFit
        animationView.loopMode = .loop
        animationView.animationSpeed = 0.7
        addSubview(animationView)
    }
    fileprivate func accessLabelConfigure() {
        accessLabel.textColor = .white
        accessLabel.textAlignment = .center
        accessLabel.text = "Access Your Photos and Videos"
        accessLabel.font = UIFont.systemFont(ofSize: 22, weight: .bold)
        addSubview(accessLabel)
    }
    fileprivate func accessButtonConfigure() {
        accessButton.setTitle("Allow Access", for: .normal)
        accessButton.layer.cornerRadius = buttonCornerRadius
        accessButton.backgroundColor = UIColor(red: 69 / 255, green: 145 / 255, blue: 226 / 255, alpha: 1)
        addSubview(accessButton)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        animationConfigure()
        accessLabelConfigure()
        accessButtonConfigure()
        
    }
    func startAnimation() {
        animationView.play()
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        animationView.frame.size = animationViewSize
        animationView.frame.origin = CGPoint(x: frame.width / 2 - (animationViewSize.width / 2), y: frame.height / 2.5 - (animationViewSize.height / 2))
        accessLabel.sizeToFit()
        accessLabel.frame.origin = CGPoint(x: frame.width / 2 - (accessLabel.frame.width / 2), y: animationView.frame.maxY + 20)
        accessButton.frame.size = CGSize(width: accessLabel.frame.width, height: accessButtonHeight)
        accessButton.frame.origin = CGPoint(x: frame.width / 2 - (accessButton.frame.width / 2), y: accessLabel.frame.maxY + 20)
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
