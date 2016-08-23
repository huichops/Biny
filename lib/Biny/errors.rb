module Biny
  module Errors
    class InvalidArgumentError < StandardError
      attr_reader :object
      def initialize(message)
        super(message)
      end
    end
  end
end
