# Write a program to create a nested module.

module Mobile
  Android = 11

  # create a nested module
  module SmartPhone

    # defined a fn to return android version
    def androidVersion
      Android
    end

  end

end

class Fifth

  include Mobile::SmartPhone

end

obj = Fifth.new
puts obj.androidVersion
