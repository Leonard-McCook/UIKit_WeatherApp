//
//  ViewController.swift
//  WeatherApp
//
//  Created by Leonard McCook-Carr on 9/29/23.
//

import UIKit

class WeatherViewController: UIViewController {
    
    private let primaryView = CurrentWeatherView()

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpView()
        getLocation()
    }
    
    private func getLocation() {
        LocationManager.shared.getCurrentLocation { location in
            print(String(describing: location))
            
            
            WeatherManager.shared.getWeather(for: location) {
                
            }
        }
    }
    
    private func setUpView() {
        view.backgroundColor = .systemBackground
        
        view.addSubview(primaryView)
        NSLayoutConstraint.activate([
            primaryView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            primaryView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor),
            primaryView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor),
            primaryView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
        ])
    }

}

