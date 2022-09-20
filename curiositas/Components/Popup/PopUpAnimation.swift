//
//  PopUpAnimation.swift
//  curiositas
//
//  Created by sml on 19/09/22.
//

import UIKit

extension Popup {
    func zoomIn() {
        self.stackView.transform = CGAffineTransform.identity.scaledBy(x: 0.01, y: 0.01)
        
        UIView.animate(withDuration: 0.5, delay: 0.0, options: UIView.AnimationOptions.curveEaseIn, animations: {
            
            // HERE
            self.stackView.transform = CGAffineTransform.identity // Scale your image

      }) { (finished) in
          UIView.animate(withDuration: 0, animations: {
            
              self.stackView.transform = CGAffineTransform.identity // undo in 1 seconds

        })
     }
    }
    
    func zoomOut() {
        UIView.animate(withDuration: 0.5, delay: 0.0, options: UIView.AnimationOptions.curveEaseIn, animations: {
            
            self.stackView.transform = CGAffineTransform.identity.scaledBy(x: 0.01, y: 0.01)

      }) { (finished) in
          UIView.animate(withDuration: 0, animations: {
            
              self.stackView.transform = CGAffineTransform.identity.scaledBy(x: 0.01, y: 0.01)

        })
      }
    }
}
