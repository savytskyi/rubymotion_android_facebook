# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project/template/android'

begin
  require 'bundler'
  Bundler.require
rescue LoadError
end

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.name = 'fb_test'

  app.vendor_project :jar => 'vendor/android-support-v4.jar'
  app.vendor_project :jar => "vendor/cardview-v7-23.2.1/classes.jar",
            :resources => "vendor/cardview-v7-23.2.1/res",
            :manifest => "vendor/cardview-v7-23.2.1/AndroidManifest.xml"
  app.vendor_project :jar => "vendor/facebook-android-sdk-4.10.0/fbclasses.jar",
            :resources => "vendor/facebook-android-sdk-4.10.0/res",
            :manifest => "vendor/facebook-android-sdk-4.10.0/AndroidManifest.xml"

  app.permissions << :internet

  app.manifest_entry('application', 'meta-data', :name => 'com.facebook.sdk.ApplicationId', :value => '@string/facebook_app_id')
  app.manifest_entry('application', 'activity',
      :name => "com.facebook.FacebookActivity",
      "android:configChanges" => "keyboard|keyboardHidden|screenLayout|screenSize|orientation",
      "android:theme" => "@android:style/Theme.Translucent.NoTitleBar",
      "android:label" => "@string/app_name")
end
