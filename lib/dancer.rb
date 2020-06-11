require_relative './class_methods_module.rb'
require_relative './dance_module.rb'
require_relative './fancy_dance.rb'

class Dancer 
  include Dance
  extend MetaDancing
  
  class Dancer
  extend FancyDance::ClassMethods
  include FancyDance::InstanceMethods
end
 
   attr_accessor :name
 
  def initialize(name)
    @name = name
  end
end 

 