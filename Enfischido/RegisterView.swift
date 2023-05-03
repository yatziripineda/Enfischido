//
//  RegisterView.swift
//  Enfischido
//
//  Created by CEDAM05 on 02/05/23.
//

import SwiftUI

struct RegisterView: View {
    @State var user: String = ""
    @State var email: String = ""
    @State var password: String = ""
    @State var showPassword: Bool = false
    
    var isSignInButtonDisabled: Bool {
        [email, password].contains(where: \.isEmpty)
    }
    
   
    var body: some View {
        NavigationView{
            ZStack{
                VStack(alignment: .center, spacing: 15){
                    Spacer()
                    Image("bebe1")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding()
                    Spacer()
                    TextField("user", text: $user ,prompt: Text("username").foregroundColor(.blue))
                        .disableAutocorrection(true)
                        .padding(10)
                        .overlay {
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(.blue, lineWidth: 2)
                        }
                        .padding(.horizontal)
            
                    TextField("email", text: $email ,prompt: Text("email").foregroundColor(.blue))
                        .disableAutocorrection(true)
                        .padding(10)
                        .overlay {
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(.blue, lineWidth: 2)
                        }
                        .padding(.horizontal)
                    HStack {
                        Group {
                            if showPassword {
                                TextField("Password", // how to create a secure text field
                                            text: $password,
                                            prompt: Text("Password").foregroundColor(.red))
                                .disableAutocorrection(true)// How to change the color of the TextField Placeholder
                            } else {
                                SecureField("Password", // how to create a secure text field
                                            text: $password,
                                            prompt: Text("Password").foregroundColor(.red))
                                .disableAutocorrection(true)// How to change the color of the TextField Placeholder
                            }
                        }
                        .padding(10)
                        .overlay {
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(.red, lineWidth: 2) // How to add rounded corner to a TextField and change it colour
                        }

                        Button {
                            showPassword.toggle()
                        } label: {
                            Image(systemName: showPassword ? "eye.slash" : "eye")
                                .foregroundColor(.red) // how to change image based in a State variable
                        }

                    }.padding(.horizontal)

                    Spacer()
                    NavigationLink {
                        MainMenuView()
                    } label: {
                        Text("Sign In")
                            .font(.title2)
                            .bold()
                            .foregroundColor(.white)
                    }
                    .frame(height: 50)
                    .frame(maxWidth: .infinity) // how to make a button fill all the space available horizontaly
                    .background(
                        isSignInButtonDisabled ? // how to add a gradient to a button in SwiftUI if the button is disabled
                        LinearGradient(colors: [.gray], startPoint: .topLeading, endPoint: .bottomTrailing) :
                            LinearGradient(colors: [.blue], startPoint: .topLeading, endPoint: .bottomTrailing)
                    )
                    .cornerRadius(20)
                    .disabled(isSignInButtonDisabled) // how to disable while some condition is applied
                    .padding()
                }
            }//zstack
        }//navegation
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
