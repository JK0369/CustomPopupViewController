//
//  ViewController.swift
//  ExCustomPopup
//
//  Created by 김종권 on 2023/02/26.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    private let presentButton: UIButton = {
        let button = UIButton()
        button.setTitle("present popuup", for: .normal)
        button.setTitleColor(.systemBlue, for: .normal)
        button.setTitleColor(.blue, for: .highlighted)
        button.addTarget(self, action: #selector(tap), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(presentButton)
        presentButton.snp.makeConstraints {
            $0.center.equalToSuperview()
        }
    }
    
    @objc private func tap() {
        let popupVC = CustomPopupViewController()
        present(popupVC, animated: true)
    }
}
