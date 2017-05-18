FactoryGirl.define do
  factory :project do
    name "Maestro"
    description "Gerenciador de projetos"
    cost 50.0
    date_begin DateTime.now
    date_end DateTime.now
  end
end
