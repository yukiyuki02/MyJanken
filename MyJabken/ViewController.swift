//
//  ViewController.swift
//  MyJabken
//
//  Created by 畠山裕基 on 2023/03/26.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var answerImageView: UIImageView!
    @IBAction func answerButton(_ sender: Any) {
        
        var answerNumber = Int.random(in: 0...2)
        var newAnswerNumber=0
        repeat{
            newAnswerNumber = Int.random(in:0...2)
        }while newAnswerNumber == answerNumber
        answerNumber = newAnswerNumber
        
        if answerNumber==0{
            answerLabel.text = "グー"
            answerImageView.image = UIImage(named: "gu")
        }
        else if answerNumber==1{
            answerLabel.text = "パー"
            answerImageView.image = UIImage(named: "pa")
        }
        else if answerNumber==2{
            answerLabel.text = "チョキ"
            answerImageView.image = UIImage(named: "choki")
        }
    }
    

}

