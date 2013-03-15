class Gist < ActiveRecord::Base
  attr_accessible :description, :lexer, :snippet
  #ograniczenie - pola lexer i snippet muszą być wypełnione
  validates_presence_of :lexer, :message => "must be provided"
  validates_presence_of :snippet, :message => "must be provided"
end

