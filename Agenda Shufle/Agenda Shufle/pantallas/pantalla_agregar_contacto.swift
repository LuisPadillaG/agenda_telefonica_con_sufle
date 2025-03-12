//
//  pantalla_agregar_contacto.swift
//  Agenda Shufle
//
//  Created by alumno on 3/3/25.
//

import SwiftUI

struct PantallaAgregarContacto: View {
    @State private var nombre: String = ""
    @State private var numero_telefonico: String = ""
    let esquinas_redondeadas = CGSize(width: 35, height: 35)
    var boton_salir: () -> Void = {
        print("PARECE QUE TE HAS EQUIVOCADO")
    }
    var boton_agregar: (_ nombre: String, _ numero: String) -> Void = {nombre, numero in
        print("parece que te has equivocado")
    }
    
    var body: some View {
        Text("Colocar la etiqueta de nombre")
            .font(.system(size: 18, weight: .heavy))
            .foregroundColor(.gray)
        ZStack{
            Rectangle()
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: 49)
                .foregroundColor(Color(white: 0.9, opacity: 0.7))
                .padding(10)
                .clipShape(RoundedRectangle(cornerSize: esquinas_redondeadas))
                
            TextField("Nombre Apellido",text: $nombre)
                .padding(15)
                .clipShape(RoundedRectangle(cornerSize: esquinas_redondeadas))
        }
        
        Text("Colocar el campo de numero telefonico")
            .font(.system(size: 18, weight: .heavy))
            .foregroundColor(.gray)
        ZStack{
            Rectangle()
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: 49)
                .foregroundColor(Color(white: 0.9, opacity: 0.7))
                .padding(10)
                
            TextField("656...",text: $numero_telefonico)
                .padding(15)
        }
        HStack{
            // Este icono es para agregar a un contacto
            Spacer()
            Icono(tamano: 65, ruta_icono: "person.crop.circle.badge.plus",
                padding: 10)
            .foregroundColor(Color.blue)
                .onTapGesture {
                    boton_agregar(nombre, numero_telefonico)
                }
            Spacer()
            Spacer()
            //Salir de la pantalla
            Icono(tamano: 65, ruta_icono: "return")
                .onTapGesture {
                    boton_salir()
                }
                .foregroundColor(Color.red)
            Spacer()
                //esto es como operador ternario, nadie lo suele utilizar porque cuando escribe codigo lineal es condicional,
            //entonces si esto es cierto, ponemos el primer elemento o sea Color.red, sino será el 2do elemento Color.Cyan
                //.background(nombre == "" ? Color.red: Color.cyan)
        }//.background(Color.cyan)
    }
}

#Preview {
    PantallaAgregarContacto()
}
