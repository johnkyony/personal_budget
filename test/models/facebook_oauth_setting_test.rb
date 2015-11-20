require "test_helper"

describe FacebookOauthSetting do
  let(:facebook_oauth_setting) { FacebookOauthSetting.new }

  it "must be valid" do
    value(facebook_oauth_setting).must_be :valid?
  end
end
