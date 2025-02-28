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
    ContactoAgenda(nombre: "Juaewefano", telefono:"3225"),
    ContactoAgenda(nombre: "Joan", telefono:"52415"),
    ContactoAgenda(nombre: "Juan", telefono:"12345"),
    ContactoAgenda(nombre: "Juana", telefono:"123455"),
    ContactoAgenda(nombre: "Juaewefano", telefono:"3225"),
    ContactoAgenda(nombre: "Joan", telefono:"52415"),
]
struct PantallaAgenda: View {
    var largo_de_pantalla = UIScreen.main.bounds.width
    var ancho_de_pantalla = UIScreen.main.bounds.height
    var body: some View {
        ScrollView{
            VStack (spacing: 10){
                /*ForEach(0...15, id: \.self){_ in
                    ContactoPrevista()
                }*/
                ForEach(contactos){ contacto in
                    //Text("\(contacto.nombre)")
                    ContactoPrevista(contacto_a_mostrar: contacto)
                }
                .background(Color.cyan) 
            }.frame(width: largo_de_pantalla, alignment: Alignment.center)
        }
        .background(Color.green)
        
        .navigationTitle("---") //inutulizable casi
        .listStyle(.plain)
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
