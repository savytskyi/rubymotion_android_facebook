class MainActivity < Android::App::Activity
  def onCreate(savedInstanceState)
    super

    Com::Facebook::FacebookSdk.sdkInitialize(getApplicationContext());
  end
end