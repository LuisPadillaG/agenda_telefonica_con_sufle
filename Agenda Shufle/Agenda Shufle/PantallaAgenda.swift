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
    ContactoAgenda(nombre: "Puan", telefono:"12345"),
    ContactoAgenda(nombre: "Luana", telefono:"123455"),
    ContactoAgenda(nombre: "Duaewefano", telefono:"3225"),
    ContactoAgenda(nombre: "Eoan", telefono:"52415"),
]

enum PantallasDisponibles: String, Identifiable{
    case pantalla_agregar, pantalla_del_ganador
    var id: String {rawValue}
}
struct PantallaAgenda: View {
    var largo_de_pantalla = UIScreen.main.bounds.width
    var ancho_de_pantalla = UIScreen.main.bounds.height
    
    @State var contactos_actuales: [ContactoAgenda] = [
        ContactoAgenda(nombre: "Juan", telefono:"12345"),
        ContactoAgenda(nombre: "Juana", telefono:"123455"),
        ContactoAgenda(nombre: "Goku", telefono:"3225"),
        ContactoAgenda(nombre: "Joan", telefono:"52415"),
        ContactoAgenda(nombre: "Puan", telefono:"12345"),
        ContactoAgenda(nombre: "Luana", telefono:"123455"),
        ContactoAgenda(nombre: "Duaewefano", telefono:"3225"),
        ContactoAgenda(nombre: "Eoan", telefono:"52415"),
    ]
    @State var pantalla_a_mostrar: PantallasDisponibles?
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack (spacing: 10){
                    /*ForEach(0...15, id: \.self){_ in
                        ContactoPrevista()
                    }*/
                    ForEach(contactos_actuales){ contacto in
                        NavigationLink{
                            pantalla_contacto_unico(contacto_a_molestardos: contacto)
                                .foregroundColor(.black)
                        } label:{
                            ContactoPrevista(contacto_a_mostrar: contacto)
                        }
                    }
                    
                }.frame(alignment: Alignment.center)
                    .background(Color(white: 0.9, opacity: 0.7))
                    .padding(10)
                    .background(Color(white: 0.9, opacity: 0.7))
                
            }
            .background(Color.white)
        }
        
        .navigationTitle("---") //inutulizable casi
        .listStyle(.plain)
        HStack(alignment: VerticalAlignment.center, spacing: 25){
            ZStack{
                Circle()
                    .frame(width: 100)
                    .foregroundStyle(Color.red)
                Circle()
                    .frame(width: 65, height: 65)
                    .foregroundColor(Color.white)
                Image(systemName: "plus")
                    .foregroundColor(Color.red)
            }
            .padding(15)
            /*.onTapGesture {
                print("Falta implementar la seccion de agregar contacto")
                pantalla_a_mostrar = PantallasDisponibles.pantalla_agregar
            }*/
            
            Spacer()
            
            ZStack{
                Circle()
                    .frame(width: 100)
                    .foregroundStyle(Color.blue)
                Circle()
                    .frame(width: 65, height: 65)
                    .foregroundColor(Color.white)
                Image(systemName: "shuffle")
                    .foregroundColor(Color.blue)
            }
            .padding(15)
            .onTapGesture {
                print("Lanzar un intent para comenzar la llamada")
                pantalla_a_mostrar = PantallasDisponibles.pantalla_del_ganador
            }
        }.background(Color.white)
            .sheet(item: $pantalla_a_mostrar){ pantalla in
                switch(pantalla){
                case .pantalla_agregar:
                    PantallaAgregarContacto(
                        boton_salir: {
                            pantalla_a_mostrar = PantallasDisponibles.pantalla_del_ganador
                            
                    },
                        boton_agregar: {nombre, numero in
                            let contacto_nuevo = ContactoAgenda(nombre: nombre, telefono:
                                                                    numero)
                            contactos_actuales.append(contacto_nuevo)
                            pantalla_a_mostrar = nil
                            
                        }
                        
                    )
                
                case .pantalla_del_ganador:
                                pantalla_del_ganador(contacto_a_molestar: contactos_actuales.randomElement() ?? ContactoAgenda(nombre: "Desconocido", telefono: "0000"))
                            }
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
