//
//  ViewController.swift
//  Tarea5
//
//  Created by Maggie Jimenez Herrera on 10/16/19.
//  Copyright © 2019 Maggie Jimenez Herrera. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    struct slotComp {
        var imagen : UIImage!
        var nombre : String
    }
    
    var imagenes = [slotComp]()

    var counter = 0
    var comp1 = ""
    var comp2 = ""
    var comp3 = ""
    
    @IBOutlet weak var lbwin: UILabel!
    @IBOutlet weak var btGo: UIButton!
    @IBOutlet weak var picker: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let img1 = slotComp(imagen: UIImage(named: "bar"), nombre: "bar")
        let img2 = slotComp(imagen: UIImage(named: "crown"), nombre: "crown")
        let img3 = slotComp(imagen: UIImage(named: "lemon"), nombre: "lemon")
        let img4 = slotComp(imagen: UIImage(named: "cherry"), nombre: "cherry")
        let img5 = slotComp(imagen: UIImage(named: "seven"), nombre: "seven")
        
        imagenes = [img1, img2, img3, img4, img5,img1, img3, img3, img5, img1,img4, img2, img3, img4, img2,img1, img1, img2, img1, img5,img5, img2, img3, img2, img5]
        lbwin.isHidden = true
        picker.delegate = self
        picker.dataSource = self
        
        srandom(UInt32(time(nil)))
    }
    

    @IBAction func spin(_ sender: Any) {
        lbwin.isHidden = true
        comp1 = ""
        comp2 = ""
        comp3 = ""
        counter = 0
        randomSpin()
        randomSpin()
        randomSpin()
    }
    
    func randomSpin(){
        let randomRow = Int.random(in: 1 ... imagenes.count)
        picker.selectRow(randomRow, inComponent: counter, animated: true)
        self.pickerView(picker, didSelectRow: randomRow, inComponent: counter)
        counter += 1
        if counter == 3{
            counter = 0
        }
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 3
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return imagenes.count
    }
    
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return (imagenes[0].imagen.size.height)
    }
    
    func pickerView(_ pickerView: UIPickerView, widthForComponent component: Int) -> CGFloat {
        return (imagenes[0].imagen.size.width)
    }
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        return UIImageView(image: imagenes[row].imagen)
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        switch component {
        case 0:
            comp1 = imagenes[row].nombre
            break
        case 1:
            comp2 = imagenes[row].nombre
            break
        case 2:
            comp3 = imagenes[row].nombre
            break
        default:
            break
        }
        if (comp1 == comp2 && comp2 == comp3){
            lbwin.isHidden = false
        }
    }
}

