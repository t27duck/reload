require "reload/version"

module Rails
  module ConsoleMethods
    def reload(*args)
      reload!(args)
    end
  end
end
