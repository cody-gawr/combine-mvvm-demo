import SwiftUI
import UIKit

struct ActivityIndicator: UIViewControllerRepresentable {
    typealias UIViewControllerType = ActivityIndicatorController
    
    
    @Binding var text: String
    @Binding var isAnimating: Bool
    
    func makeUIViewController(context: Context) -> UIViewControllerType {
        return UIViewControllerType(with: text)
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }
}
