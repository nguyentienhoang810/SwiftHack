//Custom navigation bar item
//item width is flexible by autolayout
private func customRightBarItem() {
        likeBtn.setImage(Resource.Images.like, for: .normal)
        favBtn.setImage(Resource.Images.fav, for: .normal)
        likeBtn.contentMode = .scaleAspectFill
        favBtn.contentMode = .scaleAspectFill
        let barLikeBtn = UIBarButtonItem(customView: likeBtn)
        let barFavBtn = UIBarButtonItem(customView: favBtn)
        likeBtn.addTarget(self, action: #selector(didLike), for: .touchUpInside)
        favBtn.addTarget(self, action: #selector(didFav), for: .touchUpInside)
        
        let barLikeWidth = barLikeBtn.customView?.widthAnchor.constraint(equalToConstant: 40)
        barLikeWidth?.isActive = true
        let barFavWidth = barFavBtn.customView?.widthAnchor.constraint(equalToConstant: 40)
        barFavWidth?.isActive = true
        
        let btns = [barFavBtn, barLikeBtn]
        navigationItem.rightBarButtonItems = btns
    }
