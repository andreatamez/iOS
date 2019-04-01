//
//  ConsultaViewController.swift
//  ProyectoFinal
//
//  Created by Denisse Damian on 3/25/19.
//  Copyright © 2019 Andrea Tamez. All rights reserved.
//

import UIKit

class ConsultaViewController: UIViewController {

    
    
    @IBOutlet weak var tfTitulo: UILabel!
    @IBOutlet weak var tfInfo: UILabel!
    
    
    var listaConsultas = [Consulta]()
    override func viewDidLoad() {
        super.viewDidLoad()
        var consultas = Consulta(nombre: "Alcance Máximo", informacion: " El alcance es la capacidad de cubrir una distancia o de alcanzar algo (llegar a juntarse con alguien o algo que va delante, o llegar a tocar o golpearlo")
        listaConsultas.append(consultas)
        consultas = Consulta(nombre: "Tiempo de Vuelo", informacion: " El tiempo total transcurrido desde que la aeronave comienza a moverse por su propia fuerza con el objeto de despegar, hasta que se detiene al finalizar el vuelo.")
        listaConsultas.append(consultas)
        consultas = Consulta(nombre: "Y inicial" , informacion: "La variable Y inicial representa la posición vertical inicial ")
        
        tfTitulo.text = listaConsultas.randomElement()?.nombre
        tfInfo.text = listaConsultas.randomElement()?.informacion
    }
    

    @IBAction func SiguienteTema(_ sender: UIButton) {
        tfTitulo.text = listaConsultas.randomElement()?.nombre
        tfInfo.text = listaConsultas.randomElement()?.informacion
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
