//
//  Consulta.swift
//  ProyectoFinal
//
//  Created by Denisse Damian on 3/25/19.
//  Copyright © 2019 Andrea Tamez. All rights reserved.
//

import UIKit

class Consulta : Codable {
    static let documentsDirectory = FileManager().urls(for: .documentDirectory, in: .userDomainMask).first!
    static let archiveUrl = documentsDirectory.appendingPathComponent("Consulta.plist")
    
    
    var nombre: String!
    var informacion: String!
    
    enum CodingKeys: String, CodingKey  {
        case nombre
        case informacion
    }
    init( nombre : String, informacion : String){
        self.nombre = nombre
        self.informacion = informacion
        
    }
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(nombre, forKey: .nombre)
        try container.encode(informacion, forKey: .informacion)
        
    
    }
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        nombre = try container
            .decode(String.self, forKey: .nombre)
        informacion = try container.decode(String.self, forKey: .informacion)
      
    }
    
    
    
}
