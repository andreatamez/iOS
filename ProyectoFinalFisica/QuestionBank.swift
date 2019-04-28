//
//  QuestionBank.swift
//  ProyectoFinal
//
//  Created by Alejandro Lozano on 3/25/19.
//  Copyright © 2019 Andrea Tamez. All rights reserved.
//

import Foundation

class QuestionBank{
    var list = [Question]()
    
    init() {
        list.append(Question(image: "title", questionText: "Cuando queremos calcular el valor de la altura máxima que alcanza el proyectil, ¿cuál de las variables vale cero en ese instante?", choiceA: "A. El tiempo", choiceB: "B. La velocidad horizontal", choiceC: "C. La velocidad vertical", choiceD: "D. El desplazamiento horizontal", answer: 3))
        
        list.append(Question(image: "title", questionText: "Cuando queremos saber la posición de un proyectil, ¿qué variables debemos calcular?", choiceA: "A. Los valores de 'x' y de 'y'", choiceB: "B. La velocidad horizontal y la velocidad vertical", choiceC: "C. La velocidad total y el ángulo", choiceD: "D. El tiempo de ascenso y la altura máxima", answer: 1))
        
        list.append(Question(image: "title", questionText: "A partir de las fórmulas para el movimiento de proyectiles o tiro parabólico, ¿qué variable se debe sustituir por un valor de cero para obtener las fórmulas empleadas en el tiro horizontal?", choiceA: "A. El tiempo", choiceB: "B. La velocidad vertical", choiceC: "C. El desplazamiento vertical", choiceD: "D. La velocidad vertical inicial", answer: 4))
        
        list.append(Question(image: "title", questionText: "Según lo estudiado en esta lección, ¿cuál es el signo de la velocidad total de un objeto que experimenta un tiro parabólico o tiro horizontal?", choiceA: "A. Es positiva si asciende y negativa si el proyectil desciende", choiceB: "B. No tiene signo", choiceC: "C. Es siempre positiva", choiceD: "D. Siempre se considera negativa", answer: 2))
        
        list.append(Question(image: "title" , questionText: "Se lanza un objeto desde una posición elevada con respecto al suelo y con una velocidad específica. De acuerdo al enfoque planteado en este apartado, ¿dónde se considera CONVENIENTEMENTE el origen del sistema de referencia x, y?", choiceA: "A. No importar realmente donde" , choiceB: "B. En el suelo" , choiceC: "C. En el punto de lanzamiento" , choiceD: "D. En el punto de altura máxima", answer: 3))
    }
}
