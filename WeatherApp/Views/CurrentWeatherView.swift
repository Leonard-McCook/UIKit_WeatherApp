//
//  CurrentWeatherView.swift
//  WeatherApp
//
//  Created by Leonard McCook-Carr on 10/3/23.
//

import UIKit

final class CurrentWeatherView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .orange
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
}
