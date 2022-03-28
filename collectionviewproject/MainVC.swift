//
//  ViewController.swift
//  collectionviewproject
//
//  Created by Oğuzhan Erdem on 28.03.2022.
//

import UIKit

class MainVC: UIViewController {

    private let myCollectionView: UICollectionView = {
    
    let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.translatesAutoresizingMaskIntoConstraints = false
        
        return cv
        
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        
    }
    func setupViews () {
        view.addSubview(myCollectionView)
        myCollectionView.backgroundColor = .clear
        setMyColletionViewConstraints()
        view.backgroundColor = .lightGray
        
    }

}
//MARK: - Constraints
extension MainVC {
        private func setMyColletionViewConstraints() {
            NSLayoutConstraint.activate([
                myCollectionView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
                myCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                myCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                myCollectionView.heightAnchor.constraint(equalToConstant: view.frame.width / 1.2 )
            ])
        }
    }



