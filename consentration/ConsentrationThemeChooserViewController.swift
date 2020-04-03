//
//  ConsentrationThemeChooserViewController.swift
//  consentration
//
//  Created by kerollos nabil on 4/1/20.
//  Copyright © 2020 kerollos nabil. All rights reserved.
//

import UIKit

class ConsentrationThemeChooserViewController: UIViewController, UISplitViewControllerDelegate {

   
    @IBAction func changeTheme(_ sender: Any) {
        if let cvc  = currentConsentrationViewCntrollre{
            
            cvc.gameTheme = getTheme(from: (sender as? UIButton)!)
        }else if let cvc = lastConsentrationViewController{
            cvc.gameTheme = getTheme(from: (sender as? UIButton)!)
            navigationController?.pushViewController(cvc, animated: true)
        }
        else{
            performSegue(withIdentifier: "Change theme", sender: sender)
        }
    }
    override func awakeFromNib() {
        splitViewController?.delegate = self
    }
    func splitViewController(_ splitViewController: UISplitViewController, collapseSecondary secondaryViewController: UIViewController, onto primaryViewController: UIViewController) -> Bool {
        if (secondaryViewController as? ConsentrationViewControler)?.didChaged == false {
            return true
        }else{
            return false
        }
    }
    private func getTheme(from button:UIButton) -> emojiTypes{
        switch button.tag {
        case 0:return .allOfThem
        case 1:return .faces
        case 2:return .peopleAndFantasy
        case 3:return .animals
        case 4:return .sporsts
        case 5:return .freshFood
        case 6:return .cookedFood
        case 7:return .viecles
        case 8:return .objects
        case 9:return .flags
        default:
            return .allOfThem
        }
    }
    private var currentConsentrationViewCntrollre:ConsentrationViewControler?{
        return splitViewController?.viewControllers.last as? ConsentrationViewControler
    }
    private var lastConsentrationViewController:ConsentrationViewControler?
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let cvc = segue.destination as? ConsentrationViewControler {
            cvc.gameTheme = getTheme(from: (sender as? UIButton)!)
            lastConsentrationViewController = cvc
        }
    }

}
