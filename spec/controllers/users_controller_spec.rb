require 'rails_helper'

describe UsersController, type: :controller do
  # let(:user) { User.create!(email: 'peter10@example.com', password: '1234567890') }
  user = FactoryBot.create(:user)
  # let(:user2) { User.create!(email: 'john@example.com', password: '1234567890') }
  user2 = FactoryBot.create(:user)

  describe 'GET #show' do
    context "when a user in logged in" do
      before do
        sign_in user
      end
      it "loads correct user details" do
        get :show, params: { id: user.id }
        expect(assigns(:user)).to eq user
      end
    end

    context "when a user is not logged in" do
      it 'redirects to login' do
        get :show, params: { id: user.id }
        expect(response).to redirect_to(new_user_session_path)
      end
    end

    context "when a user tries to access another user's Show page" do
      before do
        sign_in user
      end
      it 'redirects to root_path' do
        get :show, params: { id: user2.id }
        expect(response).to redirect_to(root_path)
      end
    end

  end

end
