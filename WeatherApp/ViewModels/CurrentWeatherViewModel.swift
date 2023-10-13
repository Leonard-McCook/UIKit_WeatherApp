//
//  CurrentWeatherViewModel.swift
//  WeatherApp
//
//  Created by Leonard McCook-Carr on 10/13/23.
//

import Foundation

enum WeatherViewModel {
    case current(viewModel: CurrentWeatherCollectionViewCellViewModel)
    case hourly(viewModels: [HourlyWeatherCollectionViewCellViewModel])
    case daily(viewModels: [DailyWeatherCollectionViewCellViewModel])
}
