//
//  PhotosCollectionViewCell.swift
//  AnalysisDZ
//
//  Created by iAlesha уличный on 02.04.2023.
//

import UIKit

class PhotosCollectionViewCell: UICollectionViewCell {
    
    // displaying the image
    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(imageView)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        imageView.frame = contentView.bounds
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        imageView.image = nil
    }
        
   // Sets the image for the cell
    func setImage(image: UIImage) {
        imageView.image = image
    }    

}
