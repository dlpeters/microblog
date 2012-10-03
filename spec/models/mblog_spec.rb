require 'spec_helper'

describe Mblog do

  context 'validation' do
    it { should validate_presence_of(:user) }
    it { should validate_presence_of(:email) }
  end

  context 'relationships' do
    it { should have_many :entries }
end
