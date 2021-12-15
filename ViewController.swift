//
//  ViewController.swift
//  BMI
//
//  Created by Macbook on 13/12/2021.
//

import UIKit


class ViewController: UIViewController {
    @IBOutlet weak var gioiTinhLable: UILabel!
    
    @IBOutlet weak var nuButton: UIButton!
    
    @IBOutlet weak var namButton: UIButton!
    
    @IBOutlet var chieuCaoLable: UILabel!
    
    @IBOutlet weak var chieuCaoSlider: UISlider!
    
    @IBOutlet weak var canNangLable: UILabel!
    
    @IBOutlet weak var canNangSlider: UISlider!
    var bmi: Float = 0
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func actione_BMI(_ sender: Any) {
     
        bmi = canNangSlider.value/chieuCaoSlider.value*2
        let alertControlLer = UIAlertController(title:"Thông Báo Kết Quả", message: "Chỉ Số BMI Của Bạn Là :\(bmi) ", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default, handler: nil)
        
        alertControlLer.addAction(okAction)
        
        present(alertControlLer, animated: true, completion: nil)
    }
    
    
    @IBAction func action_canNang(_ sender: Any) {
        canNangLable.text = "\(Int(canNangSlider.value))"
    }
    
    
    @IBAction func action_chieuCao(_ sender: Any) {
        chieuCaoLable.text = "\(Int(chieuCaoSlider.value))"
    }
    
    @IBAction func action_nu(_ sender: Any) {
        nuButton.alpha = 1
        namButton.alpha = 0.2
    }
    
    @IBAction func action_nam(_ sender: Any) {
        namButton.alpha = 1
        nuButton.alpha = 0.2
    }
   
}

