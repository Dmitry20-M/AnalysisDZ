//
//  PhotosViewController.swift
//  AnalysisDZ
//
//  Created by iAlesha уличный on 02.04.2023.
//

import UIKit

//class PhotosViewController: UIViewController {
//
//
//    let models: [UIImage] = Photos.myPhoto()
//    
//    private lazy var collectionView: UICollectionView = {
//        let layout = UICollectionViewFlowLayout()
//        layout.scrollDirection = .vertical
//        
//        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
//        collectionView.translatesAutoresizingMaskIntoConstraints = false
//        collectionView.backgroundColor = .white
//        collectionView.register(PhotosCollectionViewCell.self, forCellWithReuseIdentifier: PhotosCollectionViewCell.identifier)
//        return collectionView
//    }()
//    
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        view.backgroundColor = .white
//        layout()
//        setupCollectionView()
//        
//    }
//    
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//        navigationController?.navigationBar.isHidden = false
//    }
//    
//    override func viewWillDisappear(_ animated: Bool) {
//        super.viewWillDisappear(animated)
//        navigationController?.navigationBar.isHidden = true
//    }
//    
//    override func viewDidLayoutSubviews() {
//        super.viewDidLayoutSubviews()
//        collectionView.frame = collectionView.bounds
//        
//    }
//    
//    private func setupCollectionView() {
//        collectionView.dataSource = self
//        collectionView.delegate = self
//    }
//    
//
//    private func layout() {
//        view.addSubview(collectionView)
//        
//        NSLayoutConstraint.activate([
//            collectionView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
//            collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
//            collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
//            collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
//        ])
//    }
//    
//}

////MARK: - UICollectionViewDataSource
//extension PhotosViewController: UICollectionViewDataSource {
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return models.count
//    }
//    
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: PhotosCollectionViewCell.identifier, for: indexPath) as! PhotosCollectionViewCell
//        cell.setImage(image: self.models[indexPath.item])
//        return cell
//    }
//    
//}
//
////MARK: - UICollectionViewDelegateFlowLayout
//extension PhotosViewController: UICollectionViewDelegateFlowLayout {
//    private var sideIndet: CGFloat { return 8 }
//    private var elementCount: CGFloat { return 3 }
//    private var insertCount: CGFloat { return elementCount + 1 }
//    
//    
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        let width = floor((collectionView.bounds.width - sideIndet * insertCount) / elementCount)
//        return CGSize(width: width, height: width)
//    }
//    
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
//        return sideIndet
//    }
//    
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
//        UIEdgeInsets.init(top: sideIndet, left: sideIndet, bottom: sideIndet, right: sideIndet)
//    }
//    
//}
