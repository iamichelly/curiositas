//
//  ThemesViewController+UICollectionView.swift
//  curiositas
//
//  Created by sml on 14/09/22.
//


import UIKit

extension ThemesViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return ThemesConstants.shared.THEMES_INFO.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier:
                    ThemeCell.identifier, for: indexPath) as? ThemeCell else {
                        fatalError("UICollectionViewCell must be downcasted to ThemeCell")
                }
        cell.draw(ThemesConstants.shared.THEMES_INFO[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let playScreen = TestViewController(with: ThemesConstants.shared.THEMES_INFO[indexPath.row])
        navigationController?.pushViewController(playScreen, animated: false)
    }
    
}
