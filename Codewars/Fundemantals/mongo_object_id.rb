class Mongo
  require 'date'
  def self.is_valid(s)
    s.is_a?(String) && !!s.match(/^[0-9a-f]{24}$/)
  end

  def self.get_timestamp(s)
    is_valid(s) ? Time.at(s[0..7].to_i(16)).to_datetime : false
	end

# unix_time = s[0, 8].to_i(16)
# DateTime.strptime(unix_time.to_s, '%s')

# Time.at(id[0..7].to_i(16)).to_datetime
end

p Mongo.is_valid('507f1f77bcf86cd799439011')
p Mongo.get_timestamp('507f1f77bcf86cd799439011')