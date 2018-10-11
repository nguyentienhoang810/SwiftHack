extension UIView {

enum ViewSide {
        case top, right, bottomm, left, all
    }
    
    func addBorder(side: ViewSide, color: UIColor, width: CGFloat) {
        
        let border: UIView = {
            let v = UIView()
            v.translatesAutoresizingMaskIntoConstraints = false
            return v
        }()
        border.backgroundColor = color
        
        switch side {
        case .top:
            self.addSubview(border)
            NSLayoutConstraint.activate([
                border.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
                border.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
                border.topAnchor.constraint(equalTo: self.topAnchor),
                border.heightAnchor.constraint(equalToConstant: 1)
            ])
        case .right:
            self.addSubview(border)
            NSLayoutConstraint.activate([
                border.topAnchor.constraint(equalTo: self.topAnchor),
                border.trailingAnchor.constraint(equalTo: self.trailingAnchor),
                border.bottomAnchor.constraint(equalTo: self.bottomAnchor),
                border.widthAnchor.constraint(equalToConstant: 1)
            ])
        case .bottomm:
            self.addSubview(border)
            NSLayoutConstraint.activate([
                border.leadingAnchor.constraint(equalTo: self.leadingAnchor),
                border.trailingAnchor.constraint(equalTo: self.trailingAnchor),
                border.bottomAnchor.constraint(equalTo: self.bottomAnchor),
                border.heightAnchor.constraint(equalToConstant: 1)
                ])
        case .left:
            self.addSubview(border)
            NSLayoutConstraint.activate([
                border.topAnchor.constraint(equalTo: self.topAnchor),
                border.leadingAnchor.constraint(equalTo: self.leadingAnchor),
                border.bottomAnchor.constraint(equalTo: self.bottomAnchor),
                border.widthAnchor.constraint(equalToConstant: 1)
            ])
        case .all:
            self.layer.borderColor = color.cgColor
            self.layer.borderWidth = width
            self.layer.cornerRadius = 5
        }
    }

}

extension UIView {

     func addBlur(_ alpha: CGFloat = 0.8) {
        let effect = UIBlurEffect(style: .light)
        let effectView = UIVisualEffectView(effect: effect)
        effectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        effectView.frame = self.bounds
        effectView.alpha = alpha
        self.addSubview(effectView)
    }

}
