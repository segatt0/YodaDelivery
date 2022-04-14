//
//  SignInView.swift
//  YodaDelivery
//
//  Created by Moises Vilas Boas on 14/04/22.
//

import SwiftUI

struct SignInView: View {
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        
        ZStack {
            Color("yodaTheme")
            
                .ignoresSafeArea()
            ZStack {
            
                Color.white
                    .ignoresSafeArea(edges:.top)
                    
                    .scaledToFit()
                    
            }
            VStack() {
                
                logoYoda
                fieldLogin
                Spacer()
            }

           
            
        }
                    }
    }

//ZStack {
//
//    Color.white
//        .ignoresSafeArea(edges:.top)
//        .frame(width: 300, height: 300)
//}

extension SignInView {
    var logoYoda: some View {
        VStack(alignment: .center) {
            Image("Logo")
                .resizable()
                .scaledToFit()
                .padding(.horizontal, 40)
            
        }
    }
}

extension SignInView {
    var fieldLogin: some View {
        VStack(spacing: -15) {
            VStack(alignment: .leading,spacing: -10) {
                Text("Login")
                    .foregroundColor(Color.white)
                    .padding()
                    .font(Font.system(size: 25).bold())
                TextField("  Digite seu email", text: $email)
                    .frame(height: 50)
                    .background(RoundedRectangle(cornerRadius: 10).fill(Color.white))
                    .foregroundColor(Color.black)
                
                    .padding()
                
                
            }
            VStack(alignment: .leading, spacing: -10) {
                Text("Password")
                    .foregroundColor(Color.white)
                    .padding()
                    .font(Font.system(size: 25).bold())
                TextField("Digite sua senha", text: $password)
                    .foregroundColor(Color.black)
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 10).fill(Color.white))
                    .padding()
            }
        }
    }
}







struct SignInView_Previws: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
