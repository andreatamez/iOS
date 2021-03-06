//
//  ViewControllerCalculadora.swift
//  ProyectoFinal
//
//  Created by Denisse Damian on 3/22/19.
//  Copyright © 2019 Andrea Tamez. All rights reserved.
//

import UIKit

class ViewControllerCalculadora: UIViewController {

  
    @IBOutlet weak var tfYinicial: UITextField!
    @IBOutlet weak var tfYfinal: UITextField!
    @IBOutlet weak var tfx: UITextField!
    @IBOutlet weak var tfTiempo: UITextField!
    @IBOutlet weak var tfGrado: UITextField!
    @IBOutlet weak var velocidad0: UITextField!
    
    //este es el que despliega
    @IBOutlet weak var tfresult: UILabel!
    
    var yinicial: Int!
    var yfinal: Int!
    var x : Double!
    var tiempo: Int!
    var grado: Double!
    var velocidadinicial :Int!
    var velocidadX :Double!
 
    var alturamax:Double!
    var alcancemax:Double!
    var tiempodevuelo:Double!
    var vx : Double!
    var vy : Double!
  
    var y: Double!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func Resultado(_ sender: UIButton) {
        //inicializamos variables que recibamos de input
        yinicial  = Int(tfYinicial.text!)
        yfinal  = Int(tfYfinal.text!)
        x = Double(tfx.text!)
        tiempo = Int(tfTiempo.text!)
        grado = Double(tfGrado.text!)
        velocidadinicial = Int(velocidad0.text!)
        
        //si no hay un 0 si hay un valor
        if (velocidadinicial != 0 && grado != 0 ){
      //  velocidadX = Double(velocidadinicial) * cos(grado)
            alturamax = Double((velocidadinicial * velocidadinicial)) * (sin(grado) * sin(grado))
            alturamax = alturamax / (2 * 9.8)
            alcancemax = Double(velocidadinicial * velocidadinicial) * sin(grado)
            alcancemax = alcancemax / 9.8
            
            tiempodevuelo = 2 * (Double(velocidadinicial) * sin(grado)) / 9.8
            tfresult.text! = "Alcance max" + String(alcancemax) +
            "altura max" + String(alturamax) + "tiempo de vuelo" + String(tiempodevuelo)
            vx = Double(velocidadinicial) * cos(grado)
            
        }
        else if (grado != 0 && tiempo != 0) {
             vx = Double(velocidadinicial) * cos(grado)
             vy = Double(velocidadinicial) * sin(grado) - ( 9.8 * Double(tiempo))
             tfresult.text! = "Vx" + String(vx) + "Vy" + String(vy)
            
        }
        else if( grado != 0 && tiempo != 0  && velocidadinicial != 0){
            x = Double(velocidadinicial) * cos(grado) * Double(tiempo)
            y = Double(velocidadinicial) * sin(grado) * Double(tiempo)
            tfresult.text = "x" + String(x) + "Y" + String(y)
        }
        
      //  validarVariables(yinicial: yinicial, yfinal: yfinal, x: x, tiempo: tiempo, grado: grado)
        
    }
    
    
    
    
    func validarVariables(yinicial : Int, yfinal: Int, x: Int, tiempo: Int, grado: Int){
        if(yfinal < -100)||(yfinal > 100){
            print("Error en yfinal")
        }
        if(yinicial < -100)||(yinicial > 100){
            print("Error en yfinal")
        }
        if(x<0){
        print("Error en x")
        }
        if (tiempo<0){
            print("Error en tiempo")
        }
    
        
        
        
        
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
