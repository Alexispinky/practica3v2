//
//  ViewController2.swift
//  practica3
//
//  Created by DISMOV on 07/04/22.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var Name: UITextField!
    @IBOutlet weak var ingredients: UITextField!
    @IBOutlet weak var directions: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func Guardar(_ sender: Any) {
        let bandera = DataManager.instance.guarda(Name.text ?? "", ingredients.text ?? "", directions.text ?? "")
        if(!bandera){
            let alert = UIAlertController(title: "Error", message: "Algo fallo al Guardar", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        }
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let homeViewController = sb.instantiateViewController(withIdentifier: "Home")
        homeViewController.modalPresentationStyle = .fullScreen
        self.present(homeViewController, animated: true, completion: nil)

        
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
