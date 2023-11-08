class ExconService
    def self.request_api(url)
            response = Excon.get(
                url,
                headers: {
                    'X-RapidAPI-Host' => ENV['X_RAPIDAPI_HOST'],
                    'X-RapidAPI-Key' => ENV['X_RAPIDAPI_KEY']
                }
            )
            return nil if response.status != 200

            JSON.parse(response.body)
        end
end