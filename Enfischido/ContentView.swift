//
//  ContentView.swift
//  Enfischido
//
//  Created by CEDAM05 on 02/05/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Color(.gray)
                    .ignoresSafeArea()
                VStack {
                    
                    
                    Image("enfys")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding()
                        .cornerRadius(15)
                        
                    HStack{
                        Spacer()
                        NavigationLink(destination: LoginView()) {
                            Text("Login")
                                .font(.largeTitle)
                                .frame(width: 150, height: 50)
                                .foregroundColor(Color.white)
                                .background(Color(.red))
                                .cornerRadius(15)
                                .padding()
                                
                        }
                        
                        NavigationLink(destination: RegisterView()) {
                            Text("Register")
                                .font(.largeTitle)
                                .foregroundColor(Color.white)
                                .frame(width: 150, height: 50)
                                .background(Color("Rojo1"))
                                .cornerRadius(15)
                                .padding()
                        }
                        Spacer()
                        
                    }
                }
                .padding()
            }//fin de zstac1
            .foregroundColor(.white)
        }
      
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
