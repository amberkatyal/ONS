//
//  RightAlignedHomeViewController.swift
//  ONS
//
//  Created by Amber Katyal on 24/11/23.
//

import UIKit

class RightAlignedHomeViewController: UIViewController {

    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var collectionView: UICollectionView!
    
    let viewModel = HomeViewModel()
    
    // MARK: - Factory
    static func makeRightAlignedHomeViewController() -> RightAlignedHomeViewController {
        let sb = UIStoryboard(name: "RightAlignedHomeViewController", bundle: nil)
        return sb.instantiateViewController(withIdentifier: "RightAlignedHomeViewController") as! RightAlignedHomeViewController
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }

    private func setup() {
        viewModel.layout = .rightAligned
        collectionView.register(RightAlignedCollectionViewCell.self, forCellWithReuseIdentifier: "RightAlignedCollectionViewCell")
        let nib = UINib(nibName: "RightAlignedCollectionViewCell", bundle: nil)
        collectionView.register(nib, forCellWithReuseIdentifier: "RightAlignedCollectionViewCell")
    }
}

extension RightAlignedHomeViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return viewModel.options.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "RightAlignedCollectionViewCell", for: indexPath) as! RightAlignedCollectionViewCell
        let option = viewModel.options[indexPath.item]
        cell.headingLabel.text = option.title
        let image = UIImage(systemName: option.image)
        
        cell.iconImageView.image = image?.withTintColor(.systemPink, renderingMode: .alwaysTemplate)
        return cell
    }
}

