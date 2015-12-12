require 'securerandom'
def test
  str = ""
  str << SecureRandom.uuid
  str << "-" << SecureRandom.hex(4)
  str
end 
