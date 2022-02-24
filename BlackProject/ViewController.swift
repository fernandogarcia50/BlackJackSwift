//
//  ViewController.swift
//  BlackProject
//
//  Created by Mac11 on 21/02/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var carta2: UIImageView!
    @IBOutlet weak var carta1: UIImageView!
    let baraja=[#imageLiteral(resourceName: "8"),#imageLiteral(resourceName: "2.png"),#imageLiteral(resourceName: "3.png"),#imageLiteral(resourceName: "4.png"),#imageLiteral(resourceName: "6.png"),#imageLiteral(resourceName: "7.png"),#imageLiteral(resourceName: "8.png"),#imageLiteral(resourceName: "13.png"),#imageLiteral(resourceName: "5.jpg"),#imageLiteral(resourceName: "9.jpeg"),#imageLiteral(resourceName: "10.png"),#imageLiteral(resourceName: "11.png"),#imageLiteral(resourceName: "12.png"),#imageLiteral(resourceName: "14.jpeg"),#imageLiteral(resourceName: "15.jpeg"),#imageLiteral(resourceName: "16.jpeg"),#imageLiteral(resourceName: "17.jpeg"),#imageLiteral(resourceName: "18.jpeg"),#imageLiteral(resourceName: "19.png")]
    var number = Int.random(in: 0...18)
    var number2 = Int.random(in: 0...18)
    override func viewDidLoad() {
        super.viewDidLoad()
        print(number)
        print(number2)
        carta2.image=baraja[number]
        // Do any additional setup after loading the view.
    }

    @IBAction func jugarBtn(_ sender: UIButton) {
        
        carta1.image=baraja[number2]
        if(number<=6){
            if(number2==7 || number2==8 ){
                ganador()
            }else{
                perdedor()
            }
        }else if(number2<=6){
            if(number==7 || number==8 ){
                ganador()
            }else{
                perdedor()
            }
        }else{
            perdedor()
        }
        
       
    }
    
    func ganador(){
        let alerta=UIAlertController(title: "Felicidades", message: "has ganado", preferredStyle: .alert)
        let accion=UIAlertAction(title: "Jugar de nuevo", style: .default) { (_) in
            self.jugarNuevo()
        }
        let cerrar=UIAlertAction(title: "Salir", style: .destructive) { (_) in
            print("estoy saliendo")
            exit(0)
        }
        alerta.addAction(accion)
        alerta.addAction(cerrar)
        present(alerta, animated: true, completion: nil)
        
    }
    func perdedor(){
        let alerta=UIAlertController(title: "Lo siento", message: "has perdido", preferredStyle: .alert)
        let accion=UIAlertAction(title: "Jugar de nuevo", style: .default) { (_) in
            self.jugarNuevo()
        }
        let cerrar=UIAlertAction(title: "Salir", style: .destructive) { (_) in
            print("estoy saliendo")
            exit(0)
        }
        alerta.addAction(accion)
        alerta.addAction(cerrar)
        present(alerta, animated: true, completion: nil)
        
    }
    func jugarNuevo(){
         number = Int.random(in: 0...18)
         number2 = Int.random(in: 0...18)
         carta2.image=baraja[number]
         carta1.image=UIImage(named: "otroreverso")
        
    }
    
}

