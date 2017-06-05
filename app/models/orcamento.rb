class Orcamento < ApplicationRecord
  belongs_to :employess_projects
  belongs_to :clients
end
