class Subscription < ApplicationRecord
  belongs_to :leader, class_name: 'User' # leader_id - foreign key in user
  belongs_to :follower, class_name: 'User' # follower_id - foreign key in user
end
