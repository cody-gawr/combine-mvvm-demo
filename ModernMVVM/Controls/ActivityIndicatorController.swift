import UIKit

class ActivityIndicatorController: UIViewController {
    
    var activityIndicator = UIActivityIndicatorView(style: .large)
    var strLabel = UILabel()

    let effectView = UIVisualEffectView(effect: UIBlurEffect(style: .dark))
    var text: String?
    
    init(with text: String? = nil) {
        self.text = text
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func activityIndicator(_ title: String?) {
        strLabel.numberOfLines = 0
        strLabel.text = title
        strLabel.textColor = .white
        activityIndicator.color = .white
        
        [effectView, strLabel, activityIndicator].forEach { view in
            view.translatesAutoresizingMaskIntoConstraints = false
        }
        view.addSubview(effectView)
        effectView.contentView.addSubview(activityIndicator)
        effectView.contentView.addSubview(strLabel)
        
        let constraints = [
            effectView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            effectView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            effectView.widthAnchor.constraint(equalToConstant: view.frame.width / 2),
            effectView.heightAnchor.constraint(equalToConstant: view.frame.height / 3),
            activityIndicator.centerXAnchor.constraint(equalTo: effectView.centerXAnchor),
            activityIndicator.centerYAnchor.constraint(equalTo: effectView.centerYAnchor),
            strLabel.centerXAnchor.constraint(equalTo: effectView.centerXAnchor),
            strLabel.centerYAnchor.constraint(equalTo: effectView.centerYAnchor, constant: view.frame.height / 12)
        ]
        activityIndicator.startAnimating()
        NSLayoutConstraint.activate(constraints)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        activityIndicator(text)
    }
}
