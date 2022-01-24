//
//  ViewController.swift
//  NavigationExample
//
//  Created by Santhosh on 09/01/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var userName: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
        self.title = "Login"
        
        print("viewDidLoad")
        
        
        
        
        
        
        
    }

    @IBAction func goClicked(_ sender: Any) {
        if let controller = self.storyboard?.instantiateViewController(identifier: "SecondViewController") as? SecondViewController {
            controller.modalPresentationStyle = .fullScreen
            self.present(controller, animated: true, completion: {
                self.userName.text = ""
            })
        }
    }
    
    @IBAction func pushClicked(_ sender: Any) {
        if let controller = self.storyboard?.instantiateViewController(identifier: "ThirdViewController") as? ThirdViewController {
            self.navigationController?.pushViewController(controller, animated: true)
        }
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear")
        self.navigationController?.navigationBar.isHidden = true

    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("viewDidAppear")

    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("viewWillDisappear")


    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("viewDidDisappear")
        self.userName.text = ""
    }
    
    
    
    
    
    
}

