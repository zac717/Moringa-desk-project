RSpec.describe TagsController, type: :controller do
    describe "GET #index" do
      it "returns a successful response" do
        get :index
        expect(response).to be_successful
      end
      it "assigns all tags to @tags" do
        tag1 = FactoryBot.create(:tag)
        tag2 = FactoryBot.create(:tag)
        get :index
        expect(assigns(:tags)).to match_array([tag1, tag2])
      end
    end
    
    describe "GET #show" do
      let(:tag) { FactoryBot.create(:tag) }
      let!(:question1) { FactoryBot.create(:question, tags: [tag]) }
      let!(:question2) { FactoryBot.create(:question) }
      
      it "returns a successful response" do
        get :show, params: { id: tag.id }
        expect(response).to be_successful
      end
      
      it "assigns the correct tag to @tag" do
        get :show, params: { id: tag.id }
        expect(assigns(:tag)).to eq(tag)
      end
      
      it "assigns the questions for the tag to @questions" do
        get :show, params: { id: tag.id }
        expect(assigns(:questions)).to match_array([question1])
      end
    end
  end
  