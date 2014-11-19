require 'forwardable'

module Cequel
  module Delegates
    def delegates(model, *names)
      mod = Module.new do
        extend Forwardable
        def_delegators model, *names
      end
      include mod
    end
  end
end