require 'spec_helper'

describe Entry do  < ActiveRecord::Base
    attr_accessible :post, :user_id

    belongs_to :user

end
