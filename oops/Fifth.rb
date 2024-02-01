# Write a program to create a nested module.

module Mobile
  @android = 11

  @android.freeze
  # create a nested module
  module SmartPhone

    # defined a fn to return android version
    def android_version
      @android
    end

    # define a setter
    def set_android_version(an)
      @android = an
    end

  end

end

class Fifth

  include Mobile::SmartPhone

end

obj = Fifth.new
obj.freeze
obj.set_android_version(1.23)
puts obj.android_version
