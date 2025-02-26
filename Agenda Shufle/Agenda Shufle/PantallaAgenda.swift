//
//  PantallaAgenda.swift
//  Agenda Shufle
//
//  Created by alumno on 2/26/25.
//
import SwiftUI

var contactos = [
    ContactoAgenda(nombre: "Juan", telefono:"12345"),
    ContactoAgenda(nombre: "Juana", telefono:"123455"),
    ContactoAgenda(nombre: "Juano", telefono:"3225"),
    ContactoAgenda(nombre: "Joan", telefono:"52415"),
]
struct PantallaAgenda: View {
    var body: some View {
        List{
            VStack {
                /*ForEach(0...15, id: \.self){_ in
                    ContactoPrevista()
                }*/
                ForEach(contactos){ contacto in
                    Text("\(contacto.nombre)")
                    ContactoPrevista()
                }
                
            }
        }
        .background(Color.cyan)
        
    }
}

/*
 modelo: MVC (iniciar sesión, login automático)
 modelo: modelo vista vistamodelo
 modelo modelo vista (vista controlador modelo)
 */
#Preview {
    PantallaAgenda()
}
