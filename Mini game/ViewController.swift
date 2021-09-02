//
//  ViewController.swift
//  Mini game
//
//  Created by Trần Đăng Anh on 30/08/2021.
//

import UIKit

class ViewController: UIViewController {

    //override func viewDidLoad() {
      //  super.viewDidLoad()
        // Do any additional setup after loading the view.
    //}

    @IBOutlet weak var Lbl: UILabel!
    
    @IBOutlet weak var comImageView: UIImageView!
    
    @IBOutlet weak var playerImageView: UIImageView!
    
    func again() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) { [self] in
            Lbl.text = "Chơi lại"
            comImageView.image = #imageLiteral(resourceName: "ANH-3")
            playerImageView.image = #imageLiteral(resourceName: "ANH-3")
        }
    }
    
    
    @IBAction func keoButtonPressd(_ sender: UIButton) {
        comImageView.image = [#imageLiteral(resourceName: "Keo"),#imageLiteral(resourceName: "Bua"),#imageLiteral(resourceName: "Giay")][Int.random(in: 0 ... 2)]
        playerImageView.image = #imageLiteral(resourceName: "Keo")
        if comImageView.image == #imageLiteral(resourceName: "Giay") {
            Lbl.text = "Thuý Hiền thắng"
        } else if comImageView.image == #imageLiteral(resourceName: "Bua") {
            Lbl.text = "Thuý Hiền thua"
        }else {
            Lbl.text = "Hoà"
        }
        again()
    }
    
    @IBAction func buaButtonPressed(_ sender: UIButton) {
        comImageView.image = [#imageLiteral(resourceName: "Keo"),#imageLiteral(resourceName: "Bua"),#imageLiteral(resourceName: "Giay")][Int.random(in: 0 ... 2)]
        playerImageView.image = #imageLiteral(resourceName: "Bua")
        if comImageView.image == #imageLiteral(resourceName: "Keo") {
            Lbl.text = "Thuý Hiền thắng"
        } else if comImageView.image == #imageLiteral(resourceName: "Giay") {
            Lbl.text = "Thuý Hiền thua"
        }else {
            Lbl.text = "Hoà"
        }
        again()
    }

    @IBAction func giayButtonPressed(_ sender: UIButton) {
        comImageView.image = [#imageLiteral(resourceName: "Keo"),#imageLiteral(resourceName: "Bua"),#imageLiteral(resourceName: "Giay")][Int.random(in: 0 ... 2)]
        playerImageView.image = #imageLiteral(resourceName: "Giay")
        if comImageView.image == #imageLiteral(resourceName: "Bua") {
            Lbl.text = "Thuý Hiền thắng"
        } else if comImageView.image == #imageLiteral(resourceName: "Keo") {
            Lbl.text = "Thuý Hiền thua"
        }else {
            Lbl.text = "Hoà"
        }
        again()
    }
    
}

