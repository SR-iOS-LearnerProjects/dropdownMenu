//
//  ViewController.swift
//  dropdownMenu
//
//  Created by Sridatta Nallamilli on 31/12/19.
//  Copyright © 2019 Sridatta Nallamilli. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    @IBOutlet weak var tableHeight: NSLayoutConstraint!
    @IBOutlet weak var dropdownBtn: UIButton!
    
    @IBOutlet weak var dropdownView: UIView!
    
    @IBOutlet weak var cityTableView: UITableView!
    
    var citiesArr = ["City 1", "City 2", "City 3", "City 4", "City 5",  "City 6", "City 7", "City 8", "City 9", "City 10"]
    var flag1: Bool?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dropdownView.isHidden = true
//        cityTableView.isHidden = true
//        flag1 = true
    }
    
    
    @IBAction func selectionBtn(_ sender: UIButton) {
//        if flag1 == true {
//             animateTable(toggle: true)
//        }
//        else {
//            animateTable(toggle: false)
//        }
        
//        if cityTableView.isHidden {
//            animate(toggle: true)
//        } else {
//            animate(toggle: false)
//        }
        
        if dropdownView.isHidden {
            animate(toggle: true)
        } else {
            animate(toggle: false)
        }
        
//        UIView.animate(withDuration: 0.3, animations: {
//            self.dropdownView.isHidden = !self.cityTableView.isHidden
////            self.view.layoutIfNeeded()
//        })
        
    }
    
    
//    func animateTable(toggle: Bool) {
//        if toggle {
//            self.flag1 = false
//            UIView.animate(withDuration: 3.0,
//                       delay: 0.1,
//                       options: UIView.AnimationOptions.curveEaseIn,
//                       animations: { () -> Void in
//                           self.tableHeight.constant = 180
//            }, completion: { (finished) -> Void in
//            // ....
//            })
//
//        } else {
//            self.flag1 = true
//            UIView.animate(withDuration: 3.0,
//                                  delay: 0.1,
//                                  options: UIView.AnimationOptions.curveEaseIn,
//                                  animations: { () -> Void in
//                                      self.tableHeight.constant = 0
//                       }, completion: { (finished) -> Void in
//                       // ....
//                       })
//
//        }
//    }
    
    func animate(toggle: Bool) {
        
        if toggle {
            UIView.animate(withDuration: 0.3) {
                self.dropdownView.isHidden = false
//                self.view.layoutIfNeeded()
            }
        } else {
            UIView.animate(withDuration: 0.3) {
                self.dropdownView.isHidden = true
//                self.view.layoutIfNeeded()
            }
        }
        
//        if toggle {
//            UIView.animate(withDuration: 0.3, animations: {
//                self.cityTableView.isHidden = false
//                self.view.layoutIfNeeded()
//            })
//        } else {
//            UIView.animate(withDuration: 0.3, animations: {
//                self.cityTableView.isHidden = true
//                self.view.layoutIfNeeded()
//            })
//        }
        
//        if toggle {
//            UIView.animate(withDuration: 0.3) {
//                self.cityTableView.isHidden = false
////                self.view.layoutIfNeeded()
//                //                self.tableHeight.constant = 180
//            }
//        } else {
//            UIView.animate(withDuration: 0.3) {
//                self.cityTableView.isHidden = true
////                self.view.layoutIfNeeded()
////                self.tableHeight.constant = 0
//            }
//        }
    }
    
    
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return citiesArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = cityTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = citiesArr[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        dropdownBtn.setTitle("\(citiesArr[indexPath.row])", for: .normal)
            animate(toggle: false)
    }
    
}
