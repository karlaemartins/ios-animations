//
//  ViewController.swift
//  ios-animations
//
//  Created by Karla E. Martins Fernandes on 02/07/26.
//

import UIKit

final class AnimationsViewController: UIViewController {
    private let contentView = AnimationsView()

    override func loadView() {
        view = contentView
    }
}
