//
//  CustomPopupViewController.swift
//  ExCustomPopup
//
//  Created by 김종권 on 2023/02/26.
//

import UIKit
import SnapKit

final class CustomPopupViewController: DimmedViewController {
    private let containerView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        return view
    }()
    private let stackView: UIStackView = {
        let view = UIStackView()
        view.axis = .vertical
        view.spacing = 12
        view.backgroundColor = .white
        return view
    }()
    private let label: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.text = "iOS 앱 개발 알아가기 jake"
        return label
    }()
    private let closeButton: UIButton = {
        let button = UIButton()
        button.setTitle("닫기", for: .normal)
        button.setTitleColor(.systemBlue, for: .normal)
        button.setTitleColor(.blue, for: .highlighted)
        button.addTarget(self, action: #selector(close), for: .touchUpInside)
        return button
    }()
    
    override init() {
        super.init()
        setUp()
    }

    required init?(coder: NSCoder) {
        fatalError()
    }

    private func setUp() {
        view.addSubview(containerView)
        containerView.addSubview(stackView)
        stackView.addArrangedSubview(label)
        stackView.addArrangedSubview(closeButton)
        
        containerView.snp.makeConstraints {
            $0.leading.trailing.equalToSuperview().inset(20)
            $0.centerY.equalToSuperview()
        }
        stackView.snp.makeConstraints {
            $0.center.equalToSuperview()
            $0.leading.top.greaterThanOrEqualToSuperview()
            $0.bottom.trailing.lessThanOrEqualToSuperview()
        }
    }
    
    @objc private func close() {
        dismiss(animated: true)
    }
}

