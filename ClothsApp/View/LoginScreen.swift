//
//  LoginScreen.swift
//  ClothsApp
//
//  Created by Intervest on 2023-01-15.
//

import SwiftUI

struct LoginScreen: View {
    @StateObject var loginData: LoginScreenViewModel = LoginScreenViewModel()
    
    
    var body: some View {
        GeometryReader { geometry in
            VStack{
                VStack{
                    Text("Welcome \n Back")
                        .font(.system(size: 45)).bold()
                        .frame(height: geometry.size.height*0.35)
                        .padding()
                        .background(
                            ZStack{
                                LinearGradient(colors: [Color("Custom_Orange"), Color("Custom_Orange").opacity(0.8), Color.purple], startPoint: .top, endPoint: .bottom)
                                    .frame(width: 100, height: 100)
                                    .clipShape(Circle())
                                    .frame(maxWidth:  .infinity, maxHeight: .infinity,alignment: .topTrailing)
                                    .padding(.trailing)
                                    .offset(y: -25)
                                    .ignoresSafeArea()
                                
                                Circle().strokeBorder(Color.white.opacity(0.3),lineWidth: 3)
                                    .frame(width: 30, height: 30)
                                    .blur(radius: 3)
                                    .frame(maxWidth:  .infinity, maxHeight: .infinity,alignment: .bottomTrailing)
                                    .padding(30)
                                Circle().strokeBorder(Color.white.opacity(0.3),lineWidth: 3)
                                    .frame(width: 23, height: 23)
                                    .blur(radius: 3)
                                    .frame(maxWidth:  .infinity, maxHeight: .infinity,alignment: .topLeading)
                                    .padding(.leading ,30)
                                
                                Circle().strokeBorder(Color.white.opacity(0.3),lineWidth: 3)
                                    .frame(width: 40, height: 40)
                                    .blur(radius: 3)
                                    .frame(maxWidth:  .infinity, maxHeight: .infinity,alignment: .bottom)
                                    .padding(.leading ,10)
                                
                            }
                        )
                }
                
                ScrollView(.vertical, showsIndicators: false){
                    
                    VStack(spacing: 15){
                        Text("Login")
                            .font(.system(size: 22).bold())
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }.padding(30)
                    
                    CustomTextField(icon: "envelope", title: "Email",hint:"ud@gmail.com",value: $loginData.email, showPassword: $loginData.showPassword).padding(30)
                    CustomTextField(icon: "lock", title: "Password",hint:"12345",value: $loginData.password, showPassword: $loginData.showPassword).padding(30)
                    
                    Button {
                        if loginData.registerUser{
                            loginData.Register()
                        }else{
                            loginData.Login()
                        }
                    }label: {
                        Text("Login")
                            .font(.system(size: 26)).bold()
                            .padding(.vertical, 20)
                            .frame(maxWidth: .infinity)
                            .foregroundColor(Color.white)
                            .fontWeight(.semibold)
                            .background(Color.purple )
                            .cornerRadius(25)
                    }.padding(.top, 15)
                        .padding(.horizontal,25)
                    
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(
                    Color.white
                        .clipShape(CustomCorners(corners: [.topLeft, .topRight], radius: 25))
                        .ignoresSafeArea()
                )
          
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.purple)
        }
        
}
        @ViewBuilder
    func CustomTextField(icon: String,title: String,hint: String, value: Binding<String>, showPassword: Binding<Bool> ) -> some View{
            VStack(alignment: .leading, spacing: 12){
                Label {
                    Text(title)
                        .font(.system(size: 14))
                } icon:{
                    Image(systemName: icon)
                }
                .foregroundColor(Color.black.opacity(0.8))
                
                TextField(hint, text: value)
                
                Divider().background(Color.black.opacity(0.4))
                
            }
            
        }
}

struct LoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreen()
    }
}
