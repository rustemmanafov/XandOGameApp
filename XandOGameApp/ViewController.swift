//
//  ViewController.swift
//  XandOGameApp
//
//  Created by Rustem Manafov on 01.11.22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var cardView: UIView!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var startButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }

    func setupUI() {
        startButton.layer.cornerRadius = 10
        cardView.layer.cornerRadius = 10
        cardView.layer.shadowOpacity = 0.5
        cardView.layer.shadowColor = UIColor.black.cgColor
        cardView.layer.shadowRadius = 10
        cardView.layer.shadowOffset = .zero
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        nameTextField.resignFirstResponder()
    }
    
    @IBAction func startBtnClicked(_ sender: UIButton) {
        guard !nameTextField.text!.trimmingCharacters(in: .whitespaces).isEmpty else { return }
        
        let vc = storyboard?.instantiateViewController(withIdentifier: "GameViewController") as! GameViewController
        vc.playerName = nameTextField.text ?? ""
        vc.modalTransitionStyle = .flipHorizontal
        vc.modalPresentationStyle = .fullScreen
        show(vc, sender: nil)
    }
}

