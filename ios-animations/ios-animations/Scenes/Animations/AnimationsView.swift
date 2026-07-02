//
//  AnimationsView.swift
//  ios-animations
//
//  Created by Karla E. Martins Fernandes on 02/07/26.
//

import UIKit

final class AnimationsView: UIView {
    let imageView = UIImageView()
    let animateButton = UIButton(type: .system)

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        setupImageView()
        setupAnimateButton()
        setupConstraints()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupView() {
        backgroundColor = .systemBackground
    }

    private func setupImageView() {
        imageView.image = UIImage(named: "penguin")
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
    }

    private func setupAnimateButton() {
        animateButton.setTitle("Animate", for: .normal)
        animateButton.titleLabel?.font = .systemFont(ofSize: 18, weight: .semibold)
        animateButton.translatesAutoresizingMaskIntoConstraints = false
        animateButton.configuration = .filled()
    }

    private func setupConstraints() {
        addSubview(imageView)
        addSubview(animateButton)

        NSLayoutConstraint.activate([
            imageView.centerXAnchor.constraint(equalTo: centerXAnchor),
            imageView.centerYAnchor.constraint(equalTo: centerYAnchor),
            imageView.widthAnchor.constraint(equalToConstant: 220),
            imageView.heightAnchor.constraint(equalToConstant: 220),

            animateButton.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor),
            animateButton.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -32)
        ])
    }
}
