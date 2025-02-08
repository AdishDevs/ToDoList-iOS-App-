//
//  HeaderView.swift
//  ToDoList
//
//  Created by Admin on 2025-01-22.
//
import SwiftUI

struct WavyHeaderShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: 0, y: 0)) // Start at the top-left
        path.addLine(to: CGPoint(x: rect.width, y: 0)) // Top-right
        path.addLine(to: CGPoint(x: rect.width, y: rect.height - 50)) // Bottom-right before wave
        
        // Create a wave effect at the bottom
        let waveHeight: CGFloat = 80
        let waveWidth: CGFloat = rect.width / 3
        
        path.addCurve(to: CGPoint(x: rect.width - waveWidth, y: rect.height),
                      control1: CGPoint(x: rect.width - (waveWidth / 2), y: rect.height - waveHeight),
                      control2: CGPoint(x: rect.width - (waveWidth / 2), y: rect.height + waveHeight))

        path.addCurve(to: CGPoint(x: rect.width - (2 * waveWidth), y: rect.height - 50),
                      control1: CGPoint(x: rect.width - (waveWidth + (waveWidth / 2)), y: rect.height - waveHeight),
                      control2: CGPoint(x: rect.width - (waveWidth + (waveWidth / 2)), y: rect.height + waveHeight))

        path.addCurve(to: CGPoint(x: rect.width - (3 * waveWidth), y: rect.height),
                      control1: CGPoint(x: rect.width - (2 * waveWidth + waveWidth / 2), y: rect.height - waveHeight),
                      control2: CGPoint(x: rect.width - (2 * waveWidth + waveWidth / 2), y: rect.height + waveHeight))

        path.addCurve(to: CGPoint(x: 0, y: rect.height - 50),
                      control1: CGPoint(x: waveWidth / 2, y: rect.height - waveHeight),
                      control2: CGPoint(x: waveWidth / 2, y: rect.height + waveHeight))

        path.closeSubpath()
        return path
    }
}

struct HeaderView: View {
    let title: String
    let subtitle: String
    let angle: Double
    let background: Color
    
    var body: some View {
        ZStack {
            WavyHeaderShape()
                .fill(background)
                .rotationEffect(Angle(degrees: angle))
            
            VStack {
                Text(title)
                    .font(.system(size: 50))
                    .foregroundColor(.white)
                    .bold()
                Text(subtitle)
                    .font(.system(size: 30))
                    .foregroundColor(.white)
            }
            .padding(.top, 80)
        }
        .frame(width: UIScreen.main.bounds.width * 3, height: 300)
        .offset(y: -150)
    }
}

#Preview {
    HeaderView(title: "Title",
               subtitle: "Subtitle",
               angle: 15,
               background: .blue)
}
