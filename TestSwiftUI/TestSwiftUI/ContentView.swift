//
//  ContentView.swift
//  TestSwiftUI
//
//  Created by Ованес Захарян on 16.06.2022.
//

import SwiftUI
import Combine

struct ContentView: View {
    
    @State var login = ""
    @State var password = ""
    @State var shouldShowLogo: Bool = true
    
    private let keyboardPublisher = Publishers.Merge(
        NotificationCenter.default.publisher(for: UIResponder.keyboardWillShowNotification)
            .map { notification in true } ,
        NotificationCenter.default.publisher(for: UIResponder.keyboardWillHideNotification)
            .map { notification in false }
    ).eraseToAnyPublisher()
    
    
    var body: some View {
       
        
        ZStack {
            
            GeometryReader { geometry in
                Image("background")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                    .aspectRatio(contentMode: .fill)
            }
            
    ScrollView {
            
            VStack {
                
                if self.shouldShowLogo {
                Image("logo")
                    .resizable()
                    .frame(width: 120, height: 120)
                    .clipped()
                }
               
                // MARK: - Login
            
                    Text("Телефон или e-mail:")
//                        .fontWeight(.semibold)
                        .foregroundColor(Color.gray)
                        .padding(.leading, -95)
                
                    TextField("Логин", text: $login)
                        .frame(maxWidth: 250)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                
                // MARK: - Password
                    Text("Пароль:")
//                        .fontWeight(.semibold)
                        .foregroundColor(Color.gray)
                        .padding(.leading, -125)
                    
                    SecureField("Пароль", text: $password)
                        .frame(maxWidth: 250)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                
                // MARK: - Button
                
                HStack {
                    Button {
                        print("LoginButton Pressed")
                    } label: {
                        Label("Войти", systemImage: "chevron.right.circle")
                    }
                    .padding([.top, .bottom], 20)
                    .disabled(login.isEmpty || password.isEmpty)
                    
                    
                    Button {
                        print("CanseledButton Pressed")
                    } label: {
                        Label("Отмена", systemImage: "xmark.circle")
                    }
                }   .buttonStyle(.bordered)
                    .buttonBorderShape(.roundedRectangle(radius: 30))
               //     .controlSize(.large) размер кнопки
                    .foregroundColor(Color.white)
                    .padding(.horizontal, 0.0)
                    .disabled(login.isEmpty || password.isEmpty)
                
                Text("Еще не зарегистрированы?")
                    .foregroundColor(.white)
                
                Button {
                    print("RegistrationButton Pressed")
                } label: {
                    Label("Зарегистрироваться", systemImage: "chevron.right.circle")
                }   .buttonStyle(.bordered)
                    .buttonBorderShape(.roundedRectangle(radius: 30))
                    .controlSize(.regular)
                    .foregroundColor(Color.white)
            }
           
        
        }
    }
        .onTapGesture {
            UIApplication.shared.endEditing()
    }
        
        .onReceive(self.keyboardPublisher) { isKeyboardShow in
            withAnimation(.easeIn(duration: 0.5)) {
                self.shouldShowLogo = !isKeyboardShow
            }
            
        }
    
      
        
}
        
    
    
    
}


extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
