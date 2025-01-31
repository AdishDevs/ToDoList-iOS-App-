//
//  HeaderView.swift
//  ToDoList
//
//  Created by Admin on 2025-01-22.
//
import FirebaseFirestore
import SwiftUI

struct HeaderView: View {
    let title: String
    let subtitle: String
    let angle: Double
    let background: Color
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(background)
                .rotationEffect(Angle(degrees:angle))
                
            VStack{
                Text(title)
                    .font(.system(size:50))
                    .foregroundColor(Color.white)
                    .bold()
                Text(subtitle)
                    .font(.system(size:30))
                    .foregroundColor(Color.white)
            }
            .padding(.top,80)
        }
        .frame(width: UIScreen.main.bounds.width*3, height:300)
        .offset(y:-150)
    }
}

#Preview {
    HeaderView(title: "Title",
               subtitle:"Subtitle",
               angle:15,
               background:.blue )
}
