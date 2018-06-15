
  class SpotifyApi
    include HTTParty
    base_url 'https://api.spotify.com/v1'

    def initialize
      credentials =
      "#{ENV['SPOTI_ID']}:#{ENV['SOPTI_ID_SECRET']}"
      auth = 'Basic' + Base64.encode64(credentials).chomp.gsub('\n','')
      response = self.class.post('https://accounts.spotify.com/api/token'),{
        headers: {'Authorization' => auth},
        body: {grant_type: 'client_credentials'}
      }
      @token = response['access_token']

    end

    def auth_header
      return {'Authorization' => "Bearer #{@token}"}
    end

    def search_artist(name)
      self.class.get(
        "/search?=#{name}&type=artist",
        headers: auth_header
      ).to_h['artist']['item']
      #Tarea: Manejar errores
    end

    def get_artist(id)
      self.class.get(
        "/artist/#{id}",
        headers: auth_header
      ).to_h
    end

    
  end
