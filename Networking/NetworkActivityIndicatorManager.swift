//
//  NetworkActivityIndicatorManager.swift
//  DataAccessDynamic
//
//  Created by Hai Sombo on 7/2/24.
//

import UIKit

class NetworkActivityIndicatorManager {

    static let shared = NetworkActivityIndicatorManager()
    private let activityIndicator = UIActivityIndicatorView(style: .medium)

    private init() {
        activityIndicator.hidesWhenStopped = true
        activityIndicator.color = .blue
    }

    func showNetworkActivityIndicator() {
        DispatchQueue.main.async {
            guard let topViewController = UIApplication.shared.windows.first?.rootViewController else {
                return
            }
            
            topViewController.view.addSubview(self.activityIndicator)
            self.activityIndicator.center = topViewController.view.center
            self.activityIndicator.startAnimating()
        }
    }

    func hideNetworkActivityIndicator() {
        DispatchQueue.main.async {
            self.activityIndicator.removeFromSuperview()
            self.activityIndicator.stopAnimating()
        }
    }
}
