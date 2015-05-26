require 'test_helper'

class QuiztestsControllerTest < ActionController::TestCase
  setup do
    @quiztest = quiztests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:quiztests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create quiztest" do
    assert_difference('Quiztest.count') do
      post :create, quiztest: { ansA: @quiztest.ansA, ansB: @quiztest.ansB, ansC: @quiztest.ansC, ansD: @quiztest.ansD, correct: @quiztest.correct, question: @quiztest.question }
    end

    assert_redirected_to quiztest_path(assigns(:quiztest))
  end

  test "should show quiztest" do
    get :show, id: @quiztest
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @quiztest
    assert_response :success
  end

  test "should update quiztest" do
    patch :update, id: @quiztest, quiztest: { ansA: @quiztest.ansA, ansB: @quiztest.ansB, ansC: @quiztest.ansC, ansD: @quiztest.ansD, correct: @quiztest.correct, question: @quiztest.question }
    assert_redirected_to quiztest_path(assigns(:quiztest))
  end

  test "should destroy quiztest" do
    assert_difference('Quiztest.count', -1) do
      delete :destroy, id: @quiztest
    end

    assert_redirected_to quiztests_path
  end
end
