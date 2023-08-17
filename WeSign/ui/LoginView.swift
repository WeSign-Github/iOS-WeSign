//
//  LoginView.swift
//  WeSign
//
//  Created by Hafizh Sumantri on 17/08/23.
//

import SwiftUI
import GoogleSignIn

struct LoginView: View {
    
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        VStack {
            
            LoginTextField(label: "Email", binding: $email)
            Spacer().frame(height: 25)
            LoginTextField(label: "Password", binding: $password)
            Spacer().frame(height: 40)
            Button(){
                
            } label: {
                Text("Login")
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 15)
                    .foregroundColor(.green)
                    .background(.white)
                    .cornerRadius(.infinity)
                    .shadow(radius: 4,x: 0,y: 4)
            }
            
            Spacer().frame(height: 40)
            
            LabelledDivider(label: "Or Sign Up with",horizontalPadding: 0)
            
            Spacer().frame(height: 40)
            
            GoogleSignInButton().frame(height: 50)
            
        }.padding(.horizontal,35).padding(.vertical, 10)
    }
    
    func signIn() {
        
    }
}

struct LabelledDivider: View {

    let label: String
    let horizontalPadding: CGFloat
    let color: Color

    init(label: String, horizontalPadding: CGFloat = 20, color: Color = .gray) {
        self.label = label
        self.horizontalPadding = horizontalPadding
        self.color = color
    }

    var body: some View {
        HStack {
            line
            Text(label)
                .font(.caption)
                .fontWeight(.thin)
                .frame(maxWidth: .infinity)
                .foregroundColor(color).lineLimit(1)
            line
        }
    }

    var line: some View {
        VStack { Divider().background(color) }.padding(horizontalPadding)
    }
}


struct LoginTextField: View {
    
    let binding: Binding<String>
    let label: String
    
    
    init(label: String, binding: Binding<String>) {
        self.label = label
        self.binding = binding
    }
    
    var body: some View {
        TextField(label, text: binding)
            .padding(.horizontal,10)
            .padding(.vertical,20)
            .overlay(RoundedRectangle(cornerRadius: 5)
                .stroke(.black,lineWidth: 0.5))
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
