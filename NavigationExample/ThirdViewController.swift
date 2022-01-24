//
//  ThirdViewController.swift
//  NavigationExample
//
//  Created by Santhosh on 09/01/22.
//

import UIKit

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden = false

    }
    
    @IBAction func pushClicked(_ sender: Any) {
        if let controller = self.storyboard?.instantiateViewController(identifier: "FourthViewController") as? FourthViewController {
            self.navigationController?.pushViewController(controller, animated: true)
        }
        
        
    }
    @IBAction func backClicked(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
