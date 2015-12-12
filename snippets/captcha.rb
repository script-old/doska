#from SO 
#http://stackoverflow.com/questions/21262254/what-captcha-for-sinatra
# thanks to Patrick Oscity

require 'net/http'
require 'json'

post '/check_captcha' do
  res = Net::HTTP.post_form(
    URI.parse('http://www.google.com/recaptcha/api/verify'),
    {
      'privatekey' => 'Your private key',
      'remoteip'   => request.ip,
      'challenge'  => params[:recaptcha_challenge_field],
      'response'   => params[:recaptcha_response_field]
    }
  )

  success, error_key = res.body.lines.map(&:chomp)

  if success == 'true'
    # solved the captcha
  else
    # did not solve the captcha
  end
end
