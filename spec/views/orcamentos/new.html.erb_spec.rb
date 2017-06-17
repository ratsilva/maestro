require 'rails_helper'

RSpec.describe "orcamentos/new", type: :view do
  before(:each) do
    assign(:orcamento, Orcamento.new(
      :name => "MyString",
      :valorAtual => 1,
      :valorPlanejado => 1,
      :client_id => 1,
      :project_id => 1
    ))
  end

  it "renders new orcamento form" do
    render

    assert_select "form[action=?][method=?]", orcamentos_path, "post" do

      assert_select "input#orcamento_name[name=?]", "orcamento[name]"

      assert_select "input#orcamento_valorAtual[name=?]", "orcamento[valorAtual]"

      assert_select "input#orcamento_valorPlanejado[name=?]", "orcamento[valorPlanejado]"

      assert_select "input#orcamento_client_id[name=?]", "orcamento[client_id]"

      assert_select "input#orcamento_project_id[name=?]", "orcamento[project_id]"
    end
  end
end
