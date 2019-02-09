class User < ApplicationRecord
   belongs_to :part
   validates_presence_of :password, :email
end