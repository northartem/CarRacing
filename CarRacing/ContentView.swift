//
//  ContentView.swift
//  CarRacing
//
//  Created by Артём Латушкин on 27.06.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var start = false
    
    var body: some View {
        GeometryReader { _ in
            
            Path { path in // Road
                path.move(to: CGPoint(x: 140, y: 0 ))
                path.addLine(to: CGPoint(x: 260, y: 0 ))
                path.addLine(to: CGPoint(x: 260, y: 760 ))
                path.addLine(to: CGPoint(x: 140, y: 760 ))
            }
            .foregroundColor(.gray)
            
            Path { path in
                path.move(to: CGPoint(x: 200, y: 0))
                path.addLine(to: CGPoint(x: 200, y: 760))
            }
            .stroke(Color.white, style: StrokeStyle(lineWidth: 2, dash: [760 / 40]))
            
            Path { path in // Road
                path.move(to: CGPoint(x: 140, y: 0 ))
                path.addLine(to: CGPoint(x: 150, y: 0 ))
                path.addLine(to: CGPoint(x: 150, y: 760 ))
                path.addLine(to: CGPoint(x: 80, y: 760 ))
            }
            .foregroundColor(.black)
            
            Path { path in // Road
                path.move(to: CGPoint(x: 250, y: 0 ))
                path.addLine(to: CGPoint(x: 260, y: 0 ))
                path.addLine(to: CGPoint(x: 260, y: 760 ))
                path.addLine(to: CGPoint(x: 250, y: 760 ))
            }
            .foregroundColor(.black)
            
            Path { path in
                path.move(to: CGPoint(x: 0, y: 0 ))
                path.addLine(to: CGPoint(x: 140, y: 0 ))
                path.addLine(to: CGPoint(x: 140, y: 760 ))
                path.addLine(to: CGPoint(x: 0, y: 760 ))
            }
            .foregroundColor(.green)
            
            Path { path in
                path.move(to: CGPoint(x: 395, y: 0 ))
                path.addLine(to: CGPoint(x: 260, y: 0 ))
                path.addLine(to: CGPoint(x: 260, y: 760 ))
                path.addLine(to: CGPoint(x: 395, y: 760 ))
            }
            .foregroundColor(.green)
            
            Path { path in
                path.move(to: CGPoint(x: 320, y: 0 ))
                path.addLine(to: CGPoint(x: 265, y: 0 ))
                path.addLine(to: CGPoint(x: 265, y: 760 ))
                path.addLine(to: CGPoint(x: 320, y: 760 ))
            }
            .foregroundColor(.yellow)
            
            Path { path in
                path.move(to: CGPoint(x: 75, y: 0 ))
                path.addLine(to: CGPoint(x: 135, y: 0 ))
                path.addLine(to: CGPoint(x: 135, y: 760 ))
                path.addLine(to: CGPoint(x: 75, y: 760 ))
            }
            .foregroundColor(.yellow)
            
            Image("car")
                .scaleEffect(10 / 100)
                .offset(x: -80, y: -200)
                .animation(.easeInOut(duration: 1.5), value: start)
                .offset(y: start ? UIScreen.main.bounds.height - 200 : 0)
                
            
            Image("car")
                .rotationEffect(.degrees(180))
                .scaleEffect(10 / 100)
                .offset(x: -30, y: 450)
                .animation(.easeInOut(duration: 1.0), value: start)
                .offset(y: start ? UIScreen.main.bounds.height - 1500 : 0)
        }
        .onTapGesture {
            start.toggle()
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}

