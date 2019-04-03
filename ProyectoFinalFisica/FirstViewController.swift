//
//  FirstViewController.swift
//  ProyectoFinalFisica
//
//  Created by Andrea Tamez on 4/1/19.
//  Copyright © 2019 Andrea Tamez. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

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
            
            tfresult.text = "0"
            
            
        }
        
        @IBAction func Resultado(_ sender: UIButton) {

            
            yinicial  = Int(tfYinicial.text!) ?? 0
            yfinal  = Int(tfYfinal.text!) ?? 0
            x = Double(tfx.text!) ?? 0
            tiempo = Int(tfTiempo.text!) ?? 0
            grado = Double(tfGrado.text!) ?? 0
            velocidadinicial = Int(velocidad0.text!) ?? 0

            
            if (velocidadinicial != 0 && grado != 0){
                alturamax = Double((velocidadinicial * velocidadinicial)) * (sin(grado) * sin(grado))
                alturamax = alturamax / (2 * 9.8)
                alcancemax = Double(velocidadinicial * velocidadinicial) * sin(grado)
                alcancemax = alcancemax / 9.8
                
                tiempodevuelo = 2 * (Double(velocidadinicial) * sin(grado)) / 9.8
                tfresult.text! = "Alcance max: " + String(alcancemax) +
                    "altura max" + String(alturamax) + "tiempo de vuelo" + String(tiempodevuelo)
                vx = Double(velocidadinicial) * cos(grado)
                
            }
            else if (grado != 0 && tiempo != 0) {
                vx = Double(velocidadinicial) * cos(grado)
                vy = Double(velocidadinicial) * sin(grado) - ( 9.8 * Double(tiempo))
                tfresult.text! = "Vx " + String(vx) + "Vy " + String(vy)
                
            }
            else if( grado != 0 && tiempo != 0  && velocidadinicial != 0){
                x = Double(velocidadinicial) * cos(grado) * Double(tiempo)
                y = Double(velocidadinicial) * sin(grado) * Double(tiempo)
                tfresult.text = "x " + String(x) + "Y " + String(y)
            }
            
              validarVariables(yinicial: yinicial, yfinal: yfinal, x: x, tiempo: tiempo, grado: grado)
            
        }
    
        func validarVariables(yinicial : Int, yfinal: Int, x: Double, tiempo: Int, grado: Double){
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
        
        
    }


