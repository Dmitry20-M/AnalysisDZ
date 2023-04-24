//
//  VC.swift
//  AnalysisDZ
//
//  Created by iAlesha уличный on 16.04.2023.
//

import UIKit

//class VC: UIViewController {
//    
//    private lazy var button: UIButton = {
//       let button = UIButton()
//        button.translatesAutoresizingMaskIntoConstraints = false
//        button.setTitle("переход на PhotosViewController ", for: .normal)
//        button.setTitleColor(.white, for: .normal)
//        button.backgroundColor = .systemBlue
//        button.layer.cornerRadius = 10
//        button.addTarget(self, action: #selector(buttonPresed), for: .touchUpInside)
//        return button
//    }()
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        view.backgroundColor = .white
//        layout()
//    }
//    
//    
//    @objc private func buttonPresed() {
//        let vc = PhotosViewController()
//        navigationController?.pushViewController(vc, animated: true)
//    }
//
//    private func layout() {
//        view.addSubview(button)
//    
//        NSLayoutConstraint.activate([
//            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
//            button.centerYAnchor.constraint(equalTo: view.centerYAnchor),
//            button.heightAnchor.constraint(equalToConstant: 40),
//        ])
//    }
//
//}
