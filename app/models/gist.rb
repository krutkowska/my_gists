class Gist < ActiveRecord::Base
  attr_accessible :description, :lexer, :snippet
end
