class User < ApplicationRecord
  extend AttrEncrypted
  attr_encrypted :ssn, key: 'This is a key that is 256 bits!!'
end
