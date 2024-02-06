# Write a program to create a nested module.

module Mobile
  ANDROID = 11.freeze

    # defined a fn to return android version
    def self.android_version
     ANDROID
    end

    # define a setter
    def self.check_frozen_android
      ANDROID.frozen?
    end

end


puts Mobile.check_frozen_android
