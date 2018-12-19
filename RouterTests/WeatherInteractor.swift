protocol WeatherInteractable {
    func temperature(forCity city: String) -> Float
}

class WeatherInteractor {
    private let client: WeatherApiClientable!
    
    init(withClient client: WeatherApiClientable) {
        self.client = client
    }
}

extension WeatherInteractor: WeatherInteractable {
    func temperature(forCity city: String) -> Float {
        return client.weather(forCity: "Los Angeles").temperature
    }
}

