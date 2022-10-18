//
//  ViewController.swift
//  PhotoEditor
//
//  Created by Aleksandr on 18.10.2022.
//

import UIKit
import Lottie
class LaunchViewController: UIViewController {
    private let launchView: LaunchView = .init(frame: .zero)
    override func loadView() {
        view = launchView
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        launchView.startAnimation()
    }


}

