class CustomCollectionView {
  private var collectionView: UICollectionView!
  private let headerID = "headerID"
    //MARK: - layout
    private func addCollectionView() {
        self.backgroundColor = .white
        collectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewLayout())
        collectionView?.translatesAutoresizingMaskIntoConstraints = false
        collectionView.backgroundColor = UIColor.white
        self.addSubview(collectionView)
        NSLayoutConstraint.activate([
            collectionView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: padding),
            collectionView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -padding),
            collectionView.topAnchor.constraint(equalTo: self.topAnchor, constant: 20),
            collectionView.bottomAnchor.constraint(equalTo: self.bottomAnchor)
            ])
        let layout = UICollectionViewFlowLayout()
        collectionView.setCollectionViewLayout(layout, animated: true)
        layout.scrollDirection = .vertical
        layout.minimumLineSpacing = 10
        
        collectionView.register(JobFilterCell.self, forCellWithReuseIdentifier: cellID)
        collectionView.delegate = self
        collectionView.dataSource = self
        
        //MARK: - collection view header setting
        collectionView.register(UICollectionReusableView.self, 
                                forSupplementaryViewOfKind: UICollectionElementKindSectionHeader, 
                                withReuseIdentifier: headerID)
        layout.headerReferenceSize = CGSize(width: scrWidth, height: headerHeight)
    }
    
    //Custom header
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        var v : UICollectionReusableView! = nil
    
        if kind == UICollectionElementKindSectionHeader {
            v = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionElementKindSectionHeader, 
                                                                withReuseIdentifier: headerID, for: indexPath)
            if v.subviews.count == 0 {
                v.addSubview(UILabel(frame: CGRect(x: 0, y: 0, width: scrWidth, height: headerHeight)))
            }
            let label = v.subviews[0] as! UILabel
            label.textAlignment = .left
            label.font = UIFont.boldSystemFont(ofSize: 23)
            switch indexPath.section {
            case 0:
                label.text = "header 1"
            case 1:
                label.text = "header 2"
            case 2:
                label.text = "header 3"
            default:
                print("undefine filter value")
            }
        }
        return v
    }
}
