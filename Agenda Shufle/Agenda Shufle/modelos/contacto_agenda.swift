//
//  contacto_agenda.swift
//  Agenda Shufle
//
//  Created by alumno on 2/26/25.
//

import SwiftUI
//creamos una estructura, y luego el protocolo identifiable, que será una forma de identificarse único
struct ContactoAgenda: Identifiable {
    var nombre: String
    var telefono: String
    var id: String { nombre }
}
var nombre = "Pepito Veraz"
/* Esto es pseudocodigo por lo que esta mal
var nombre: set{
    let nombre_validado = filtrar_palabras(value):
    nombre = value
} get {
    return nombre.split(" ")[0]
}*/
 
