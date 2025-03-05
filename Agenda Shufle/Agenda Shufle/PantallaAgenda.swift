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
    
    @State var mostrar_pantalla_agregar_contacto: Bool = false
    @State var contactos_actuales: [ContactoAgenda] = [
        ContactoAgenda(nombre: "Juan", telefono:"12345"),
        ContactoAgenda(nombre: "Juana", telefono:"123455"),
        ContactoAgenda(nombre: "Juaewefano", telefono:"3225"),
        ContactoAgenda(nombre: "Joan", telefono:"52415"),
        ContactoAgenda(nombre: "Juan", telefono:"12345"),
        ContactoAgenda(nombre: "Juana", telefono:"123455"),
        ContactoAgenda(nombre: "Juaewefano", telefono:"3225"),
        ContactoAgenda(nombre: "Joan", telefono:"52415"),
    ]
    var body: some View {
        ScrollView{
            VStack (spacing: 10){
                /*ForEach(0...15, id: \.self){_ in
                    ContactoPrevista()
                }*/
                ForEach(contactos_actuales){ contacto in
                    //Text("\(contacto.nombre)")
                    ContactoPrevista(contacto_a_mostrar: contacto)
                }
                
            }.frame(alignment: Alignment.center)
                .background(Color.cyan)
                .padding(10)
                .background(Color.cyan)
            
        }
        .background(Color.green)
        
        .navigationTitle("---") //inutulizable casi
        .listStyle(.plain)
        HStack(alignment: VerticalAlignment.center, spacing: 25){
            ZStack{
                Circle()
                    .frame(width: 100)
                    .foregroundStyle(Color.green)
                Rectangle()
                    .frame(width: 65, height: 65)
                    .foregroundColor(Color.cyan)
                Image(systemName: "plus")
                    .background(Color.red)
                    .offset(x: 0, y: -25)
            }
            .padding(15)
            .onTapGesture {
                print("Falta implementar la seccion de agregar contacto")
                mostrar_pantalla_agregar_contacto.toggle()
            }
            
            Spacer()
            
            ZStack{
                Circle()
                    .frame(width: 100)
                    .foregroundStyle(Color.green)
                Circle()
                    .frame(width: 65, height: 65)
                    .foregroundColor(Color.cyan)
                Image(systemName: "shuffle")
                    .background(Color.red)
            }
            .padding(15)
            .onTapGesture {
                print("Lanzar un intent para comenzar la llamada")
            }
        }.background(Color.purple)
            .sheet(isPresented: $mostrar_pantalla_agregar_contacto){
                PantallaAgregarContacto(boton_salir: {
                    mostrar_pantalla_agregar_contacto.toggle()
                },
                    boton_agregar: {nombre, numero in
                    let contacto_nuevo = ContactoAgenda(nombre: nombre, telefono: numero)
                    contactos_actuales.append(contacto_nuevo)
                    mostrar_pantalla_agregar_contacto.toggle()
                    })
            }
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
