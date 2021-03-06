module Selenium
  module WebDriver
    module Support

      class BlockEventListener
        def initialize(callback)
          @callback = callback
        end

        def method_missing(meth, *args, &blk)
          @callback.call meth, *args
        end

      end # BlockEventListener
    end # Support
  end # WebDriver
end # Selenium
