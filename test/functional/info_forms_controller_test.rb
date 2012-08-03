require 'test_helper'

class InfoFormsControllerTest < ActionController::TestCase
  setup do
    @info_form = info_forms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:info_forms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create info_form" do
    assert_difference('InfoForm.count') do
      post :create, info_form: { company: @info_form.company, contact: @info_form.contact, industry: @info_form.industry }
    end

    assert_redirected_to info_form_path(assigns(:info_form))
  end

  test "should show info_form" do
    get :show, id: @info_form
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @info_form
    assert_response :success
  end

  test "should update info_form" do
    put :update, id: @info_form, info_form: { company: @info_form.company, contact: @info_form.contact, industry: @info_form.industry }
    assert_redirected_to info_form_path(assigns(:info_form))
  end

  test "should destroy info_form" do
    assert_difference('InfoForm.count', -1) do
      delete :destroy, id: @info_form
    end

    assert_redirected_to info_forms_path
  end
end
