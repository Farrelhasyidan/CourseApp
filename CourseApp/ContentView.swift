//
//  ContentView.swift
//  CourseApp
//
//  Created by Farrel hasyidan on 17/10/21.
//

import SwiftUI

struct ContentView: View {
  
  @State var show = false
  @State var show2 = false
  @State var show3 = false
  
  
    var body: some View {
      
      ZStack {
        Color(#colorLiteral(red: 0.9176470588, green: 1, blue: 0.9647058824, alpha: 1)).edgesIgnoringSafeArea(.all)

        ScrollView {
          VStack {
            Text("Courses")
              .font(.largeTitle).bold()
              .frame(maxWidth: .infinity, alignment: .leading)
              .padding(.horizontal, 44)
            
            

            ZStack {
              Image(uiImage: #imageLiteral(resourceName: "Content1")).shadow(color: Color(#colorLiteral(red: 0.7254901961, green: 0.8, blue: 0.768627451, alpha: 1)), radius: 40, x: 0, y: 20)
                .offset(x: 9)
                
                .animation(Animation.spring(response: 0.6, dampingFraction: 0.6, blendDuration: 0).delay(0.3))
              
              Image(uiImage: #imageLiteral(resourceName: "Card1")).shadow(color: Color(#colorLiteral(red: 0.7254901961, green: 0.8, blue: 0.768627451, alpha: 1)), radius: 40, x: 0, y: 20)
                .offset(x: show ? -275 : 0)
                .rotationEffect(Angle(degrees: show ? 10 : 0))
                .animation(.spring(response: 0.6, dampingFraction: 0.6, blendDuration: 0))

            }
            
            ZStack {
              Image(uiImage: #imageLiteral(resourceName: "Content1")).shadow(color: Color(#colorLiteral(red: 0.7254901961, green: 0.8, blue: 0.768627451, alpha: 1)), radius: 40, x: 0, y: 20)
                .offset(x: 9)
                
                .animation(Animation.spring(response: 0.6, dampingFraction: 0.6, blendDuration: 0).delay(0.3))
              
              Image(uiImage: #imageLiteral(resourceName: "Card2")).shadow(color: Color(#colorLiteral(red: 0.7254901961, green: 0.8, blue: 0.768627451, alpha: 1)), radius: 40, x: 0, y: 20)
                .offset(x: show2 ? -275 : 0)
                .rotationEffect(Angle(degrees: show2 ? 10 : 0))
                .animation(.spring(response: 0.6, dampingFraction: 0.6, blendDuration: 0))

            }
            
            .onTapGesture {
              self.show2.toggle()
            }
            
            ZStack {
              Image(uiImage: #imageLiteral(resourceName: "Content1")).shadow(color: Color(#colorLiteral(red: 0.7254901961, green: 0.8, blue: 0.768627451, alpha: 1)), radius: 40, x: 0, y: 20)
                .offset(x: 9)
                
                .animation(Animation.spring(response: 0.6, dampingFraction: 0.6, blendDuration: 0).delay(0.3))
              
              Image(uiImage: #imageLiteral(resourceName: "Card3")).shadow(color: Color(#colorLiteral(red: 0.7254901961, green: 0.8, blue: 0.768627451, alpha: 1)), radius: 40, x: 0, y: 20)
                .offset(x: show3 ? -275 : 0)
                .rotationEffect(Angle(degrees: show3 ? 10 : 0))
                .animation(.spring(response: 0.6, dampingFraction: 0.6, blendDuration: 0))

            }
            
            .onTapGesture {
              self.show3.toggle()
            }
            

            Spacer()
          }
          
          .onTapGesture {
            self.show.toggle()
          }
        
        }
      }
    }
}

struct ContohView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

