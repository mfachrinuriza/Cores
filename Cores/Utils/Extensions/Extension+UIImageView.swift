//
//  Extension+UIImageView.swift
//  Cores
//
//  Created by Muhammad Fachri Nuriza on 08/02/24.
//

import UIKit
import Kingfisher

extension UIImageView {
    public func setImage(
        _ image: String?,
        placeholder: String? = nil,
        isGray: Bool = false
    ) {
        // Run tasks on the Background Thread
        DispatchQueue.global(qos: .userInteractive).async {
            guard let image = image, !image.isEmpty else {
                // No image, so display the placeholder
                if let placeholder = placeholder {
                    DispatchQueue.main.async {
                        self.image = UIImage(named: placeholder)
                    }
                }
                return
            }
            
            if let url = URL(string: image) {
                self.kf.setImage(
                    with: url,
                    placeholder: UIImage(named: placeholder ?? "", in: Bundle(identifier: CoreBundle.getIdentifier()), compatibleWith: nil)
                ) { result in
                    switch result {
                    case .success(let value):
                        self.image = value.image
                    case .failure(let error):
                        Logger.printLog(error)
                    }
                }
            }
        }
    }
}
