extension UIView {
    
    func showActivityIndicator() {
        let activityView = UIActivityIndicatorView(activityIndicatorStyle: .whiteLarge)
        activityView.backgroundColor = UIColor.black.withAlphaComponent(0.5)
        activityView.frame = self.frame
        activityView.center = self.center
        activityView.tag = 222
        self.addSubview(activityView)
        activityView.startAnimating()
    }
    
    func removeActivityIndicator() {
        DispatchQueue.main.async {
            if let view = self.viewWithTag(222) {
                view.removeFromSuperview()
            }
        }
    }
    
}
