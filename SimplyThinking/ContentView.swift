//
//  ContentView.swift
//  SimplyThinking
//
//  Created by MacBook Pro on 30/05/23.
//

import SwiftUI
import UIKit

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "l.joystick.tilt.up")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hi, Let's Play with Simply Thinking")
            
            Button(action: {
                presentWordleView()
            }) {
                Text("Wordle")
                    .font(.title)
                    .padding()
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            
            Button(action: {
                presentMathQuizView()
            }) {
                Text("Math Quiz")
                    .font(.title)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
        .padding()
    }
    
    private func presentWordleView() {
        let wordleViewController = UIHostingController(rootView: WordleView())
        if let viewController = UIApplication.shared.windows.first?.rootViewController {
            viewController.present(wordleViewController, animated: true, completion: nil)
        }
    }
    
    private func presentMathQuizView() {
        let mathQuizViewController = UIHostingController(rootView: MathQuizView())
        if let viewController = UIApplication.shared.windows.first?.rootViewController {
            viewController.present(mathQuizViewController, animated: true, completion: nil)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
