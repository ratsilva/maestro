require 'rails_helper'
=begin
RSpec.describe "orcamentos/show", type: :view do
  before(:each) do
    @orcamento = assign(:orcamento, Orcamento.create!(
      :name => "Name",
      :valorAtual => 2,
      :valorPlanejado => 3,
      :client_id => 4,
      :project_id => 5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
  end
=end
end
