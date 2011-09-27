require 'test_helper'

class ContentTranslationsControllerTest < ActionController::TestCase
  setup do
    @content_translation = content_translations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:content_translations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create content_translation" do
    assert_difference('ContentTranslation.count') do
      post :create, content_translation: @content_translation.attributes
    end

    assert_redirected_to content_translation_path(assigns(:content_translation))
  end

  test "should show content_translation" do
    get :show, id: @content_translation.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @content_translation.to_param
    assert_response :success
  end

  test "should update content_translation" do
    put :update, id: @content_translation.to_param, content_translation: @content_translation.attributes
    assert_redirected_to content_translation_path(assigns(:content_translation))
  end

  test "should destroy content_translation" do
    assert_difference('ContentTranslation.count', -1) do
      delete :destroy, id: @content_translation.to_param
    end

    assert_redirected_to content_translations_path
  end
end
