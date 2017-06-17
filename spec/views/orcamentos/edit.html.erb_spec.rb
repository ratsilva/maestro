require 'rails_helper'

RSpec.describe "orcamentos/edit", type: :view do
=begin
  before(:each) do
    @orcamento = assign(:orcamento, Orcamento.create!(
      :name => "MyString",
      :valorAtual => 1,
      :valorPlanejado => 1,
      :client_id => 1,
      :project_id => 1
    ))
  end

  it "renders the edit orcamento form" do
    render

    assert_select "form[action=?][method=?]", orcamento_path(@orcamento), "post" do

      assert_select "input#orcamento_name[name=?]", "orcamento[name]"

      assert_select "input#orcamento_valorAtual[name=?]", "orcamento[valorAtual]"

      assert_select "input#orcamento_valorPlanejado[name=?]", "orcamento[valorPlanejado]"

      assert_select "input#orcamento_client_id[name=?]", "orcamento[client_id]"

      assert_select "input#orcamento_project_id[name=?]", "orcamento[project_id]"
    end
  end
=end
end
