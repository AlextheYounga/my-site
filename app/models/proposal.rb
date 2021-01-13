class Proposal < ActiveRecord::Base
  serialize :projects
  validates :client, presence: true, length: { minimum: 3, maximum: 100 }
  validates_uniqueness_of :client_key
end
