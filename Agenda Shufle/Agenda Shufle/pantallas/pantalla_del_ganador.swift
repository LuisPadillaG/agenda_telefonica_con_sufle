//
//  pantalla_del_ganador.swift
//  Agenda Shufle
//
//  Created by alumno on 3/5/25.
//

import SwiftUI

var contacto_alterno = ContactoAgenda(nombre: "ELefoncio", telefono: "656231")
struct pantalla_del_ganador: View {
    var contacto_a_molestar: ContactoAgenda
    var body: some View {
        
        VStack{
            Image("Goku")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, alignment: .topLeading)
                .border(Color.gray)
                .padding(10)
                .border(Color.red, width: 4)
                .clipShape(Circle()
                )
            //CGSize(width: 15, height: 15)
                .background(Color.white)
            HStack{
                Spacer()
                VStack{
                    Text(contacto_a_molestar.nombre).padding(.bottom, 10)
                    Text(contacto_a_molestar.telefono)
                }
                Spacer()
                ZStack{
                    Circle().foregroundColor(Color.red)
                        .frame(width: 100)
                    Image(systemName: "phone.and.waveform")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 35)
                        .foregroundColor(Color.white)
                }
                Spacer()
            }
        }
    }
}

#Preview {
    pantalla_del_ganador(contacto_a_molestar: contacto_alterno)
}
