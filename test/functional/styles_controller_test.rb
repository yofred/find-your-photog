require 'test_helper'

class StylesControllerTest < ActionController::TestCase
  setup do
    @style = styles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:styles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create style" do
    assert_difference('Style.count') do
      post :create, style: { artistic: @style.artistic, conceptual: @style.conceptual, contemporary: @style.contemporary, documentary: @style.documentary, fine_art: @style.fine_art, glamorous: @style.glamorous, like: @style.like, photo_id: @style.photo_id, photographer_id: @style.photographer_id, retro: @style.retro, traditional: @style.traditional, user_id: @style.user_id }
    end

    assert_redirected_to style_path(assigns(:style))
  end

  test "should show style" do
    get :show, id: @style
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @style
    assert_response :success
  end

  test "should update style" do
    put :update, id: @style, style: { artistic: @style.artistic, conceptual: @style.conceptual, contemporary: @style.contemporary, documentary: @style.documentary, fine_art: @style.fine_art, glamorous: @style.glamorous, like: @style.like, photo_id: @style.photo_id, photographer_id: @style.photographer_id, retro: @style.retro, traditional: @style.traditional, user_id: @style.user_id }
    assert_redirected_to style_path(assigns(:style))
  end

  test "should destroy style" do
    assert_difference('Style.count', -1) do
      delete :destroy, id: @style
    end

    assert_redirected_to styles_path
  end
end
