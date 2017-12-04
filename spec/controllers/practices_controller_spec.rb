require 'rails_helper'
require 'random_data'

RSpec.describe PracticesController, type: :controller do
  let(:my_practice) {Practice.create!(title: "New Practice Title", description: "New Practice Description", experience: rand(1..100), duration: rand(1..100)) }


  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
    
    it "assigns [my_practice] to @practices" do
      get :index
      expect(assigns(:practices)).to eq([my_practice])
    end
  end

  describe "GET #show" do
    it "returns http success" do
      get :show, {id: my_practice.id}
      expect(response).to have_http_status(:success)
    end
    
    it "renders the #show view" do
      get :show, {id: my_practice.id}
      expect(response).to render_template :show
    end
    
    it "assigns my_practice to @practice" do
      get :show, {id: my_practice.id}
      expect(assigns(:practice)).to eq(my_practice)
    end
  end

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
    
    it "renders the #new view" do
      get :new
      expect(response).to render_template :new
    end
    
    it "instantiates @practice" do
      get :new
      expect(assigns(:practice)).not_to be_nil
    end
  end
  
  describe "POST create" do
    it "increases the number of Practice by 1" do
      expect{post :create, practice: {title: RandomData.random_sentence, description: RandomData.random_paragraph, experience: rand(1..100), duration: rand(1..100)}}.to change(Practice, :count).by(1)
    end
    
    it "assigns the new practice to @practice" do
      post :create, practice: {title: RandomData.random_sentence, description: RandomData.random_paragraph, experience: rand(1..100), duration: rand(1..100)}
      expect(assigns(:practice)).to eq Practice.last
    end
    
    it "redirects to the new practice" do
      post :create, practice: {title: RandomData.random_sentence, description: RandomData.random_paragraph, experience: rand(1..100), duration: rand(1..100)}
      expect(response).to redirect_to Practice.last
    end
  end
      

  describe "GET #edit" do
    it "returns http success" do
      get :edit, {id: my_practice.id}
      expect(response).to have_http_status(:success)
    end
    
    it "renders the #edit view" do
      get :edit, {id: my_practice.id}
      expect(response).to render_template :edit
    end
    
    it "assigns practice to be updated to @practice" do
      get :edit, {id: my_practice.id}
      
      practice_instance = assigns(:practice)
      
      expect(practice_instance.id).to eq my_practice.id
      expect(practice_instance.title).to eq my_practice.title
      expect(practice_instance.description).to eq my_practice.description
      expect(practice_instance.duration).to eq my_practice.duration
      expect(practice_instance.experience).to eq my_practice.experience
    end
      
  end
  
  describe "PUT update" do
    it "updates practice with expected attributes" do
      new_title = RandomData.random_sentence
      new_description = RandomData.random_paragraph
      new_experience = rand(1..100)
      new_duration = rand(1..100)
      
      put :update, id: my_practice.id, practice: {title: new_title, description: new_description, experience: new_experience, duration: new_duration}
      expect(response).to redirect_to my_practice
    end
    
    it "redirects to the updated practice" do
      new_title = RandomData.random_sentence
      new_description = RandomData.random_paragraph
      new_experience = rand(1..100)
      new_duration = rand(1..100)
      
      put :update, id: my_practice.id, practice: {title: new_title, description: new_description, experience: new_experience, duration: new_duration}
      expect(response).to redirect_to my_practice
    end
      
  end
  
  describe "DELETE destroy" do
    it "deletes the practice" do
      delete :destroy, {id: my_practice.id}
      count = Practice.where({id: my_practice.id}).size
      expect(count).to eq(0)
    end
    
    it "redirects to practices index" do
      delete :destroy, {id: my_practice.id}
      expect(response).to redirect_to practices_path
    end
  end
      
end
