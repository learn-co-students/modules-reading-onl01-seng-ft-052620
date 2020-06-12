require_relative './dance_module.rb'
require_relative './class_methods_module.rb'
require_relative './fancy_dance.rb'

# To lend our two classes all of the methods of the `Dance` module, we use the `include` keyword: 
# include Dance

# attr_accessor :name

# def initialize(name)
#   @name = name
# end

class Kid
    extend FancyDance::ClassMethods
    include FancyDance::InstanceMethods

    attr_accessor :name
  
    def initialize(name)
      @name = name
    end
end