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
            ZStack{
                ZStack {
                                Circle()
                                    .fill(.blue.shadow(.drop(color: .blue, radius: 10)))
                                    .frame(width: 220, height: 220)
                                
                                Image("Goku")
                                    .resizable()
                                    .frame(width: 200, height: 200)
                                    .clipShape(Circle())
                                    .padding(20)
                            }
            }
            HStack{
                Spacer()
                VStack{
                    Text(contacto_a_molestar.nombre).padding(.bottom, 10)
                    Text(contacto_a_molestar.telefono)
                }
                Spacer()
                ZStack{
                    ZStack{
                        Circle()
                            .frame(width: 100)
                            .foregroundStyle(Color.red)
                            .shadow(color: .red, radius: 2, x: 3, y: 0)
                        Circle()
                            .frame(width: 65, height: 65)
                            .foregroundColor(Color.white)
                        Image(systemName: "phone.and.waveform")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 35)
                            .foregroundColor(Color.red)
                    }
                   
                }
                Spacer()
            }
        }
    }
}

#Preview {
    pantalla_del_ganador(contacto_a_molestar: contacto_alterno)
}
