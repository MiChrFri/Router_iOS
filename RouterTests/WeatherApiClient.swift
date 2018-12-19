protocol WeatherApiClientable {
    func weather(forCity city: String) -> Weather
}

class WeatherApiClient: WeatherApiClientable {
    func weather(forCity city: String) -> Weather {
        return Weather(temperature: 21.7, isItDarkOutSide: false)
    }
}


struct Weather {
    let temperature: Float
    let isItDarkOutSide: Bool
}
