class ApplicationController < ActionController::API


    private

    def encode_token(payload)
        JWT.encode(payload, hmac_secret, "HS256")      
    end

    def hmac_secret
        ENV["TOKEN_SECRET"]
    end

    def logged_in_user_id
        begin
          token = request.headers["Authorization"]
          payl_Arr = JWT.decode(token, hmac_secret, true, { algorithm: 'HS256' })
          user_id = payl_Arr.first["user_id"]
          user_id 
        rescue 
          nil
        end
      end
 
      def valid_token_exists
            !!logged_in_user_id
      end



end
