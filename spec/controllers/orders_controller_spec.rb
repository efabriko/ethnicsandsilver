require 'rails_helper'

describe OrdersController, type: :controller do
  # let(:user) { User.create!(email: 'peter9@example.com', password: '1234567890') }
  user = FactoryBot.create(:user)

  describe 'GET #show' do
    context "when a user in logged in" do
      before do
        sign_in user
      end
      it 'renders the index template' do
        get :index
        expect(response).to be_ok
        expect(response).to render_template('index')
      end

    end

    context "when a user is not logged in" do
      it 'redirects to login' do
        get :show, params: { id: user.id }
        expect(response).to redirect_to(new_user_session_path)
      end
    end

  end

end
