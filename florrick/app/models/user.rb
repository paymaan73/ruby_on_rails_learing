class User < ApplicationRecord
  florrick do
    string :name, :lsatname
    string(:fullname) { "#{name} #{lastname}"}
  end
end
