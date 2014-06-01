module ActionDispatch
  module Http
    module UnderscoreParams

      def parameters
        underscore_keys super
      end

      private
        
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