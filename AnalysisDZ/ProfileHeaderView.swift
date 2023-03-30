//
//  ProfileHeaderView.swift
//  AnalysisDZ
//
//  Created by iAlesha уличный on 30.03.2023.
//

import UIKit

class ProfileHeaderView: UIView {
    
    private let authorText: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.textColor = .black
        label.numberOfLines = 2
        return label
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        addView()
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addView() {
        addSubview(authorText)
    }
    
    private func layout() {
     
        NSLayoutConstraint.activate([
            
            authorText.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 50),
            authorText.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            authorText.trailingAnchor.constraint(equalTo: trailingAnchor),
            
        ])
    }
    
}

