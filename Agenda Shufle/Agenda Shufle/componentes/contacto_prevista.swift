//
//  contacto_prevista.swift
//  Agenda Shufle
//
//  Created by alumno on 2/26/25.
//

import SwiftUI

let contacto_prueba = ContactoAgenda(nombre: "Juaqqerqrrn", telefono:"12345")
struct ContactoPrevista: View {
    var contacto_a_mostrar: ContactoAgenda
    var al_pulsar: () -> Void = { print("No se ha implementado") }
    let esquinas_redondeadas = CGSize(width: 15, height: 15)
    var body: some View {
        HStack(alignment: VerticalAlignment.center, spacing: 10){
            Spacer()
            VStack {
                Image("Goku")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 55, alignment: .topLeading)
                    .clipShape(RoundedRectangle(cornerSize: esquinas_redondeadas))
            }.background(Color.white)
                
            Spacer()
            
            VStack(alignment: HorizontalAlignment.leading, spacing: 10, content: {
                Text(contacto_a_mostrar.nombre)
                    .font(.system(size: 24, weight: .bold))
                    .padding(.horizontal, 10)
                Text(contacto_a_mostrar.telefono)
                    .font(.system(size: 16, weight: .medium))
                    .padding(.horizontal, 10)
            })
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
            .frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
            .background(Color(white: 0.9, opacity: 0.7)) 
            
            
            Spacer()
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
        
        .background(Color.white)
        
        .clipShape(RoundedRectangle(cornerSize: esquinas_redondeadas))
        .onTapGesture {
            al_pulsar()
        }
    }
}

#Preview {
    ContactoPrevista(contacto_a_mostrar:
        contacto_prueba)
}
