//
//  ProfileViewController.swift
//  AnalysisDZ
//
//  Created by iAlesha уличный on 30.03.2023.
//


// на экране профиля мы создали таблицу и размещаем все UI элементы которые создали в ProfileHeaderView,  PostTableViewCell

import UIKit

class ProfileViewController: UIViewController {


    private let postModel = PostModel.myPostModel()
    private let profileHV = ProfileHeaderView()
    private let photosTable = PhotosTableViewCell()
//    lazy var photoCenter = photosTable
 
    
    // Table view settings with the necessary configurations
    private lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .grouped)
        tableView.dataSource = self
        tableView.delegate = self
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.register(PostTableViewCell.self, forCellReuseIdentifier: PostTableViewCell.identifier)
        tableView.register(PhotosTableViewCell.self, forCellReuseIdentifier: PhotosTableViewCell.identifier)
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        constraints()
        setupGesture()

    }
    
    private func setupGesture() {
        let photoGesture = UITapGestureRecognizer(target: self, action: #selector(tapOpenPhotos))
    }
    
    @objc private func tapOpenPhotos() {
        
    }
    
    private func constraints() {
        view.addSubview(tableView)
        
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            
        ])
    }
    
}

//MARK: - UITableViewDataSource
extension ProfileViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return 1
        default:
            return postModel.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: PhotosTableViewCell.identifier, for: indexPath) as! PhotosTableViewCell
            cell.goToPhotos.addTarget(self, action: #selector(setupGoButton), for: .touchUpInside)
            return cell
            
        default:
            let cell = tableView.dequeueReusableCell(withIdentifier: PostTableViewCell.identifier, for: indexPath) as! PostTableViewCell
//            cell.setupCell(model: postModel[indexPath.row])
            return cell
        }
    }
    
    @objc func setupGoButton() {
        if let navigationController = navigationController {
            let photosVC = PhotosViewController()
            photosVC.title = "Photos"
            navigationController.pushViewController(photosVC, animated: true)

         
        }
        
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        switch section {
        case 1:
            return nil
        default:
            return profileHV
        }
    }
}
//MARK: - UITableViewDelegate
extension ProfileViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        switch section {
        case 0:
            return UITableView.automaticDimension
        default:
            return 0
        }
        
    }
    
}
    
