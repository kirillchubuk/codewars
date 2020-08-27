=begin
Write a function that when given a URL as a string, parses out just the domain name and returns it as a string.

For example:
domain_name("http://github.com/carbonfive/raygun") == "github"
domain_name("http://www.zombie-bites.com") == "zombie-bites"
domain_name("https://www.cnet.com") == "cnet"
=end

def domain_name(url)
  regex = /(https?):\/\/(?:www\.)?(?<domain_name>.*?)\./
  url.match(regex)[:domain_name]
end

url = "http://github.com/carbonfive/raygun"
puts domain_name("http://www.zombie-bites.com")