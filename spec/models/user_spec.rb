# encoding: utf-8
# == Schema Information
#
# Table name: users
#
#  id            :integer(4)      not null, primary key
#  name          :string(32)
#  homesite      :string(100)
#  jabber_id     :string(32)
#  cached_slug   :string(32)
#  created_at    :datetime
#  updated_at    :datetime
#  gravatar_hash :string(32)
#  avatar        :string(255)
#  signature     :string(255)
#

require 'spec_helper'

describe User do
  it "has an account" do
    user = FactoryGirl.create(:user)
    user.account.should be
  end
end
