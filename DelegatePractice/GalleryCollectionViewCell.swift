//
//  GalleryCollectionViewCell.swift
//  DelegatePractice
//
//  Created by TTN on 10/06/20.
//  Copyright © 2020 TTN. All rights reserved.
//

import UIKit

struct galleryImage
{
    var format : String
    var width : Int
    var height : Int
    var filename : String
    var id : Int
    var author : String
    var author_url : String
    var post_url : String
}

class GalleryCollectionViewCell: UICollectionViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func getDataImages() {
        
        URLCache.shared.removeAllCachedResponses()
        URLCache.shared = URLCache(memoryCapacity: 0, diskCapacity: 0, diskPath: nil)
        AF.request("https://api.themoviedb.org/3/discover/movie?sort_by=popularity.desc&api_key=820016b7116f872f5f27bf56f9fdfb66", method: .get, parameters: nil, encoding: URLEncoding.default)
            .responseData { [weak self] response in
                switch response.result {
                case .failure(let error):
                    print(error)
                case .success(let data):
                    do {
                        let decoder = JSONDecoder()
                        decoder.keyDecodingStrategy = .useDefaultKeys
                        let result = try decoder.decode(movie.self, from: data)
                        self?.popular = result
                        //print(result)
                    } catch { print(error) }
                }
                
                self?.poster.reloadData()
        }
    }

}
