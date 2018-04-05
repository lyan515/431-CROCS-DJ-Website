require 'test_helper'

class DjPortfoliosControllerTest < ActionController::TestCase
  setup do
    @dj_portfolio = dj_portfolios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dj_portfolios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dj_portfolio" do
    assert_difference('DjPortfolio.count') do
      post :create, dj_portfolio: { bio: @dj_portfolio.bio, facebook_link: @dj_portfolio.facebook_link, instagram_link: @dj_portfolio.instagram_link, mixcloud_link: @dj_portfolio.mixcloud_link, name: @dj_portfolio.name, soundcloud_link: @dj_portfolio.soundcloud_link, twitter_link: @dj_portfolio.twitter_link }
    end

    assert_redirected_to dj_portfolio_path(assigns(:dj_portfolio))
  end

  test "should show dj_portfolio" do
    get :show, id: @dj_portfolio
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dj_portfolio
    assert_response :success
  end

  test "should update dj_portfolio" do
    patch :update, id: @dj_portfolio, dj_portfolio: { bio: @dj_portfolio.bio, facebook_link: @dj_portfolio.facebook_link, instagram_link: @dj_portfolio.instagram_link, mixcloud_link: @dj_portfolio.mixcloud_link, name: @dj_portfolio.name, soundcloud_link: @dj_portfolio.soundcloud_link, twitter_link: @dj_portfolio.twitter_link }
    assert_redirected_to dj_portfolio_path(assigns(:dj_portfolio))
  end

  test "should destroy dj_portfolio" do
    assert_difference('DjPortfolio.count', -1) do
      delete :destroy, id: @dj_portfolio
    end

    assert_redirected_to dj_portfolios_path
  end
end
