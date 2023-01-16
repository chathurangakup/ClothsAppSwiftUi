//
//  LoginScreenViewModel.swift
//  ClothsApp
//
//  Created by Intervest on 2023-01-15.
//

import SwiftUI

class LoginScreenViewModel: ObservableObject{
    @Published var email : String = ""
    @Published var password : String = ""
    @Published var showPassword : Bool = false
    @Published var registerUser : Bool = false
    
    @Published var re_Enter_password: String = ""
    @Published var showEnterPassword: Bool = false
    
    func Login() {
        
    }
    
    func Register(){}
    
    func fogertPassword(){} 
    
    
    
}
