require File.dirname(__FILE__) + '/../test_helper'

class TipsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:tips)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_tip
    assert_difference('Tip.count') do
      post :create, :tip => { }
    end

    assert_redirected_to tip_path(assigns(:tip))
  end

  def test_should_show_tip
    get :show, :id => tips(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => tips(:one).id
    assert_response :success
  end

  def test_should_update_tip
    put :update, :id => tips(:one).id, :tip => { }
    assert_redirected_to tip_path(assigns(:tip))
  end

  def test_should_destroy_tip
    assert_difference('Tip.count', -1) do
      delete :destroy, :id => tips(:one).id
    end

    assert_redirected_to tips_path
  end
end
