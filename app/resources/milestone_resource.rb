class MilestoneResource < ApplicationResource
  federated_type("Epic").has_many :milestones
  federated_belongs_to :epic
  attribute :name, :string

  belongs_to :epic, remote: "http://localhost:3004/api/v1/epics"
  attribute :epic_id, :integer, only: [:readable, :filterable]
end
