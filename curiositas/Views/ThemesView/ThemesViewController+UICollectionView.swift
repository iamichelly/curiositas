//
//  ThemesViewController+UICollectionView.swift
//  curiositas
//
//  Created by sml on 14/09/22.
//


import UIKit

extension ThemesViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "themesCell", for: indexPath)
        cell.backgroundColor = .red
        return cell
    }
    
    
}
