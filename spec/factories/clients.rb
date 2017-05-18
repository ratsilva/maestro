FactoryGirl.define do
  factory :client do
    company_name 'Empresa Teste'
    contact_name 'Ricardo Silva'
    zip_code 01513-040
    adress 'Rua Mituto Mizumoto'
    number 316
    district 'Liberdade'
    city 'São Paulo'
    state 'SP'
    country 'Brasil'
    phone_number '(11) 4794-3136'
    email 'ricardosilva@sistemaids.com.br'
    status 'Ativo'
  end
end
