require 'minitest'
require 'minitest/spec'
require 'minitest/autorun'
require 'underscore_params'

#
# Mymics the setup of how ActionDispatch::Request has a Parameters module included
#
module UnderscoreTest
  module Parameters
    def parameters
      parameter_values
    end
  end

  class TestController
    attr_accessor :parameter_values
    include Parameters
    include ActionDispatch::Http::UnderscoreParams
  end
end

describe ActionDispatch::Http::UnderscoreParams do
  before do
    @controller = UnderscoreTest::TestController.new
  end

  it 'underscores camelCase keys' do
    @controller.parameter_values = {'firstName' => 'Bob'}
    @controller.parameters.must_equal({'first_name' => 'Bob'})
  end

  it 'underscores camelCase keys in nested objects' do
    @controller.parameter_values = {'objName' => {'firstName' => 'Bob'} }
    @controller.parameters.must_equal({'obj_name' => {'first_name' => 'Bob'}})
  end

  it 'underscores camelCase keys in deeply nested objects' do
   @controller.parameter_values = {"type"=>"Birth",
       "text"=>"This is when I was born",
       "date"=>"1980-01-01",
       "locations"=>{},
       "persons"=>
        {"person"=>
          {"firstName"=>"Bob",
           "middleNames"=>"Billy Joe"
          }
        }
      }
    
    @controller.parameters['persons']['person'].must_equal({'first_name' => 'Bob', 'middle_names' => 'Billy Joe'})
  end

  it 'underscores keys nested in arrays' do
    @controller.parameter_values = {'objName' => [{'firstName' => 'Bob'}] }
    @controller.parameters.must_equal({'obj_name' => [{'first_name' => 'Bob'}]})
  end
end