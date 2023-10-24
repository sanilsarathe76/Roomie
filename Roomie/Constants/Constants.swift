//
//  Constants.swift
//  Roomie
//
//  Created by macmini45 on 25/08/23.
//

import Foundation
import UIKit

extension UIViewController {
    
    func pushView(_ vc:UIViewController,_ isAnimated:Bool = true){
        self.navigationController?.pushViewController(vc, animated: isAnimated)
    }
    
    func presentVC(_ vc:UIViewController,_ isAnimated:Bool = true){
        self.present(vc, animated: isAnimated, completion: nil)
    }
    
    func dismissOrPop() {
        if let navigationController = self.navigationController{
            navigationController.popViewController(animated: true)
        } else {
            self.dismiss(animated: true, completion: nil)
        }
    }
    
    func getVC(storyboard : Storyboards, vcIdentifier : String) -> UIViewController {
        return UIStoryboard(name: storyboard.board(), bundle: nil).instantiateViewController(withIdentifier: vcIdentifier)
    }
}

