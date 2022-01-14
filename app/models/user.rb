class User < ApplicationRecord
    has_many :infantries, :cavalries, :rangeds
end
