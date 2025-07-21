//
//  ViewController.swift
//  SnapKitPractice
//
//  Created by 금가경 on 7/21/25.
//

import SnapKit
import UIKit

class JackflixViewController: UIViewController {
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "JACKFLIX"
        label.font = .systemFont(ofSize: 30, weight: .black)
        label.textColor = .red
        
        return label
    }()
    
    private let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.spacing = 10
        
        return stackView
    }()
    
    private let signUpButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .white
        button.layer.cornerRadius = 5
        
        let attributedString = NSAttributedString(string: "회원가입", attributes: [.font: UIFont.systemFont(ofSize: 15, weight: .bold)])
        button.setAttributedTitle(attributedString, for: .normal)
        
        return button
    }()
    
    private let additionalInfoLabel: UILabel = {
        let label = UILabel()
        label.text = "추가 정보 입력"
        label.font = .systemFont(ofSize: 15)
        label.textColor = .white
        
        return label
    }()
    
    private let switchButton: UISwitch = {
        let switchButton = UISwitch()
        switchButton.onTintColor = .red
        
        return switchButton
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
    private func configure() {
        view.backgroundColor = .black
        configureTitleLabel()
        configureStackView()
        configureSwitchButton()
        configureAdditionalInfoLabel()
    }
    
    private func configureTitleLabel() {
        view.addSubview(titleLabel)
                
        titleLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(view.safeAreaLayoutGuide).offset(80)
        }
    }
    
    private func configureStackView() {
        let placeholders = ["이메일 주소 또는 전화번호", "비밀번호", "닉네임", "위치", "추천 코드 입력"]
        
        placeholders.forEach { stackView.addArrangedSubview(UITextField.default(placeholder: $0)) }
        
        stackView.addArrangedSubview(signUpButton)
        
        view.addSubview(stackView)
        
        stackView.snp.makeConstraints { make in
            make.horizontalEdges.equalTo(view).inset(36)
            
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview()
        }
    }
    
    private func configureAdditionalInfoLabel() {
        view.addSubview(additionalInfoLabel)
        
        additionalInfoLabel.snp.makeConstraints { make in
            make.leading.equalTo(stackView)
            make.centerY.equalTo(switchButton.snp.centerY)
        }
    }
    
    private func configureSwitchButton() {
        view.addSubview(switchButton)
        
        switchButton.snp.makeConstraints { make in
            make.trailing.equalTo(stackView)
            make.top.equalTo(stackView.snp.bottom).offset(10)
        }
    }
}

