module ActionDispatch
  module Http

    #
    # Overrides the default params method on ActionDispatch::Request to underscore all keys
    # (request.params is aliased to parameters)
    #
    # Should be included into ActionDispatch::Request after the standard Rails modules
    #
    module UnderscoreParams

      #
      # Processes parameters by underscoring all hash keys
      #
      def parameters
        underscore_keys super
      end

      private
        
      #
      # Underscores all key values in both Hashes and Hashes in arrays.
      # Other values are not modified
      #
      # @param value [Object] The value to be processed
      #
      def underscore_keys(value)
        case value
          when Array
            value.map { |v| underscore_keys(v) }
          when Hash
            Hash[value.map { |k, v| [underscore_key(k), underscore_keys(v)] }]
          else
            value
        end
      end

      def underscore_key(val)
        val.to_s.underscore
      end
    end
  end
end