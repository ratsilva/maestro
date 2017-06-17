require 'rails_helper'

RSpec.describe "orcamentos/index", type: :view do
=begin
  before(:each) do
    assign(:orcamentos, [
      Orcamento.create!(
        :name => "Name",
        :valorAtual => 2,
        :valorPlanejado => 3,
        :client_id => 4,
        :project_id => 5
      ),
      Orcamento.create!(
        :name => "Name",
        :valorAtual => 2,
        :valorPlanejado => 3,
        :client_id => 4,
        :project_id => 5
      )
    ])
  end

  it "renders a list of orcamentos" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
  end
=end
end
