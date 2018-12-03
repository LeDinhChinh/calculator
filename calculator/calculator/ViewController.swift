//
//  ViewController.swift
//  calculator
//
//  Created by Admin on 10/20/18.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit

public class ViewController: UIViewController {

    @IBOutlet weak var lbl: UILabel!
    var previous: String!
    var nexts: String!
    var opera: String!
    var history: [String] = []
    override public func viewDidLoad() {
        super.viewDidLoad()
        // test  
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func nut(_ sender: UIButton) {
        // xoa ki tu cua lbl text
        var char: [Character] = [Character](lbl.text!)
        
        if char.count > 8 {
            let alert = UIAlertController(title: "Notice", message: "Do not enter more than ten characters", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel, handler: nil))
            present(alert, animated: true, completion: nil)
        }
        
        if sender.tag == 11 {
            var newChar: [Character] = []
            if char.count > 1 {
                for i in 0...char.count - 2 {
                    newChar.append(char[i])
                }
            }
            lbl.text = String(newChar)
        }
        
        if sender.tag == 0 {
            var show: String = lbl.text!
            show = show + "0"
            lbl.text = show
        }
        
        if sender.tag == 1 {
            var show: String = lbl.text!
            show = show + "1"
            lbl.text = show
        }
        
        if sender.tag == 2 {
            var show: String = lbl.text!
            show = show + "2"
            lbl.text = show
        }
        
        if sender.tag == 3 {
            var show: String = lbl.text!
            show = show + "3"
            lbl.text = show
        }
        
        if sender.tag == 4 {
            var show: String = lbl.text!
            show = show + "4"
            lbl.text = show
        }
        
        if sender.tag == 5 {
            var show: String = lbl.text!
            show = show + "5"
            lbl.text = show
        }
        
        if sender.tag == 6 {
            var show: String = lbl.text!
            show = show + "6"
            lbl.text = show
        }
        
        if sender.tag == 7 {
            var show: String = lbl.text!
            show = show + "7"
            lbl.text = show
        }
        
        if sender.tag == 8 {
            var show: String = lbl.text!
            show = show + "8"
            lbl.text = show
        }
        
        if sender.tag == 9 {
            var show: String = lbl.text!
            show = show + "9"
            lbl.text = show
        }
        
        if sender.tag == 10 {
            lbl.text = ""
        }
        
        if sender.tag == 12 || sender.tag == 13 || sender.tag == 14 || sender.tag == 15 || sender.tag == 16 {
            previous = lbl.text
            lbl.text = ""
        }
        
        if sender.tag == 12 {
            opera = "%"
        }
        
        if sender.tag == 13 {
            opera = "/"
        }
        
        if sender.tag == 14 {
            opera = "x"
        }
        
        if sender.tag == 15 {
            opera = "-"
        }
        
        if sender.tag == 16 {
            opera = "+"
        }
        
        if sender.tag == 17 {
            nexts = lbl.text
            if opera == "%" {
                let result: Int = Int(previous!)! % Int(nexts!)!
                lbl.text = String(result)
                history.append("\(previous!) % \(nexts!) = \(result)")
            }
            
            if opera == "/" {
                let result: Double = Double(previous!)! / Double(nexts!)!
                lbl.text = String(result)
                history.append("\(previous!) / \(nexts!) = \(result)")
            }
            
            if opera == "x" {
                let result: Double = Double(previous!)! * Double(nexts!)!
                lbl.text = String(result)
                history.append("\(previous!) x \(nexts!) = \(result)")
            }
            
            if opera == "-" {
                let result: Double = Double(previous!)! - Double(nexts!)!
                lbl.text = String(result)
                history.append("\(previous!) - \(nexts!) = \(result)")
            }
            
            if opera == "+" {
                let result: Double = Double(previous!)! + Double(nexts!)!
                lbl.text = String(result)
                history.append("\(previous!) + \(nexts!) = \(result)")
            }
        }
        
    }
    
    @IBAction func history(_ sender: Any) {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let viewHistory = sb.instantiateViewController(withIdentifier: "history") as! ViewController2
        viewHistory.array = history
        self.navigationController?.pushViewController(viewHistory, animated: true)
    }
    
    
}

