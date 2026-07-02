//
//  ViewController.swift
//  ios-animations
//
//  Created by Karla E. Martins Fernandes on 02/07/26.
//

import UIKit

final class AnimationsViewController: UIViewController {
    private let contentView = AnimationsView()
    private var currentAnimation = 0

    override func loadView() {
        view = contentView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupActions()
    }

    private func setupActions() {
        contentView.animateButton.addTarget(self, action: #selector(animateButtonTapped), for: .touchUpInside)
    }

    @objc private func animateButtonTapped() {
        contentView.animateButton.isHidden = true

        UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 5, options: []) {
            switch self.currentAnimation {
            case 0:
                self.contentView.imageView.transform = CGAffineTransform(scaleX: 2, y: 2)

            case 1:
                self.contentView.imageView.transform = .identity
                
            case 2:
                self.contentView.imageView.transform = CGAffineTransform(translationX: -256, y: -256)

            case 3:
                self.contentView.imageView.transform = .identity
                
            case 4:
                self.contentView.imageView.transform = CGAffineTransform(rotationAngle: .pi)

            case 5:
                self.contentView.imageView.transform = .identity
                
            case 6:
                self.contentView.imageView.alpha = 0.1
                self.contentView.imageView.backgroundColor = .systemBackground

            case 7:
                self.contentView.imageView.alpha = 1
                self.contentView.imageView.backgroundColor = .clear

            default:
                break
            }
        } completion: { _ in
            self.contentView.animateButton.isHidden = false
        }

        currentAnimation += 1

        if currentAnimation > 7 {
            currentAnimation = 0
        }
    }
}
