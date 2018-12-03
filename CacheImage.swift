
extension UIImageView {
    func showImage(by urlString: String) {
        let cacher = Resource.Cacher.initializer
        self.contentMode = .scaleAspectFill
        self.clipsToBounds = true
        guard let url = URL(string: urlString) else { return }
        
        if let imageFromCache = cacher.object(forKey: urlString as AnyObject) as? UIImage {
            self.image = imageFromCache
            return
        }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if error != nil { print("download error")}
            guard let data = data else { return }
            DispatchQueue.main.async {
                let cacheImg = UIImage(data: data)
                cacher.setObject(cacheImg!, forKey: urlString as AnyObject)
                self.image = cacheImg
            }
        }.resume()
    }
}
