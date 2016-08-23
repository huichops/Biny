require "Biny/version"
require "Biny/repository"

Dir[File.dirname(__FILE__) + "/Biny/use_cases/**/*.rb"].each { |file| require file}

module Biny
  # Your code goes here...
end
