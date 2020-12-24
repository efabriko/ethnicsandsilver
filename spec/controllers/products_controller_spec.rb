require 'rails_helper'

describe ProductsController, type: :controller do
  let(:product) { Product.create!(name: 'Bracelet', description: 'Nice bracelet', price: "10") }

  context 'GET #index' do
    it 'renders the index template' do
      get :index
      expect(response).to be_ok
      expect(response).to render_template('index')
    end
  end

  context 'GET #show' do
    it "renders the show template" do
      get :show, params: { id: product.id }
      expect(response).to be_ok
      expect(response).to render_template('show')
    end
  end

end
