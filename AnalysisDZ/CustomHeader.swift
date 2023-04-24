//
//  CustomHeader.swift
//  AnalysisDZ
//
//  Created by iAlesha уличный on 23.04.2023.
//

import UIKit

protocol CustomHeaderDelegate: AnyObject {
    func didTapImage(_ image: UIImage?, imageRect: CGRect)
    func myTapForStudents() -> Void
}

class CustomHeader: UIView {

    weak var myCustomDelegate: CustomHeaderDelegate?
    
    var callBack: (() -> Void)?
    var callBack2: ((UIImage?, CGRect) -> Void)?
    
    // Creating a background view
    let backgroundView: UIView = {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height))
        view.backgroundColor = .systemGray4
        view.isHidden = true
        view.alpha = 0
        return view
    }()
    
    // Creating the avatar image view
    let avatarImageView: UIImageView = {
        let imageView = UIImageView(frame: .zero)
        imageView.image = UIImage(named: "logo")
        imageView.layer.cornerRadius = 70
        imageView.layer.masksToBounds = true
        imageView.layer.borderWidth = 3
        imageView.contentMode = .scaleAspectFill
        imageView.layer.borderColor = UIColor.white.cgColor
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.isUserInteractionEnabled = true
        return imageView
    }()

    // Creating the Rock Music title label
    private let titleRockMusic: UILabel = {
        let label = UILabel(frame: .zero)
        label.text = "Rock Music"
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    // Creating the status label
    private let statusLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.text = "Waiting for something..."
        label.font = UIFont.systemFont(ofSize: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .gray
        return label
    }()
    
    // Creating the status text field
    private lazy var statusTextField: UITextField = {
        let textField = UITextField(frame: .zero)
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: textField.frame.height))
        textField.leftViewMode = .always
        textField.placeholder = "Write the status"
        textField.font = UIFont.systemFont(ofSize: 15)
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.layer.cornerRadius = 12
        textField.layer.borderColor = UIColor.black.cgColor
        textField.layer.borderWidth = 1
        textField.backgroundColor = .white
        return textField
    }()
    
    // Creating the set status button
    private lazy var setStatusButton: UIButton = {
        let button = UIButton(frame: .zero)
        button.setTitle("Show status", for: .normal)
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 15
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.shadowOffset = CGSize(width: 4, height: 4)
        button.layer.shadowOpacity = 0.7
        button.layer.shadowRadius = 4
        button.layer.shadowColor = UIColor.black.cgColor
        return button
    }()
        
    func setupView() {
        addSubview(titleRockMusic)
        addSubview(statusLabel)
        addSubview(statusTextField)
        addSubview(setStatusButton)
        addSubview(backgroundView)
        addSubview(avatarImageView)
        
    }
    
    private func addGesture() {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(tapAction))
        avatarImageView.addGestureRecognizer(tapGesture)
    }
    
    @objc private func tapAction() {
        myCustomDelegate?.didTapImage(avatarImageView.image, imageRect: avatarImageView.frame)
        callBack2?(avatarImageView.image, avatarImageView.frame)
        myCustomDelegate?.myTapForStudents()
    }
    
    
    // Initializers
    override init(frame: CGRect) {
        super.init(frame: .zero)
        setupView()
        setupConstraints()
        addGesture()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

    func setupConstraints() {
        
        NSLayoutConstraint.activate([
            avatarImageView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 16),
            avatarImageView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 16),
            avatarImageView.heightAnchor.constraint(equalToConstant: 150),
            avatarImageView.widthAnchor.constraint(equalToConstant: 150),
            
            
            titleRockMusic.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 27),
            titleRockMusic.leadingAnchor.constraint(equalTo: avatarImageView.trailingAnchor, constant: 16),
            
            
            statusLabel.leadingAnchor.constraint(equalTo: avatarImageView.trailingAnchor, constant: 16),
            statusLabel.bottomAnchor.constraint(equalTo: statusTextField.topAnchor, constant: -5),
            
            
            statusTextField.leadingAnchor.constraint(equalTo: avatarImageView.trailingAnchor, constant: 16),
            statusTextField.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -16),
            statusTextField.bottomAnchor.constraint(equalTo: setStatusButton.topAnchor, constant: -34),
            statusTextField.heightAnchor.constraint(equalToConstant: 40),
            
            
            setStatusButton.topAnchor.constraint(equalTo: avatarImageView.bottomAnchor, constant: 16),
            setStatusButton.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 16),
            setStatusButton.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -16),
            setStatusButton.heightAnchor.constraint(equalToConstant: 50),
            setStatusButton.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -16)
        ])

        
    }

}
