//
//  WordleView.swift
//  SimplyThinking
//
//  Created by MacBook Pro on 30/05/23.
//

import SwiftUI
import UIKit

struct WordleView: UIViewControllerRepresentable {
    typealias UIViewControllerType = ViewController

    func makeUIViewController(context: Context) -> ViewController {
        return ViewController()
    }

    func updateUIViewController(_ uiViewController: ViewController, context: Context) {
        // Tidak perlu melakukan implementasi di sini karena ViewController akan menangani perubahan UI secara otomatis.
    }
}

struct WordleView_Previews: PreviewProvider {
    static var previews: some View {
        WordleView()
    }
}
