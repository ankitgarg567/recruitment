class LoginInfo1 < ActiveRecord::Base
  attr_accessible :password, :username
    validates_presence_of :password,:username

end
