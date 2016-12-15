require 'test_helper'

module Fanta
  class FormDesignsControllerTest < ActionController::TestCase
    setup do
      @form_design = fanta_form_designs(:one)
      @routes = Engine.routes
    end

    test "should get index" do
      get :index
      assert_response :success
      assert_not_nil assigns(:form_designs)
    end

    test "should get new" do
      get :new
      assert_response :success
    end

    test "should create form_design" do
      assert_difference('FormDesign.count') do
        post :create, form_design: { content: @form_design.content, form_type: @form_design.form_type, free: @form_design.free, name: @form_design.name, sequence: @form_design.sequence, slug: @form_design.slug, status: @form_design.status, type: @form_design.type }
      end

      assert_redirected_to form_design_path(assigns(:form_design))
    end

    test "should show form_design" do
      get :show, id: @form_design
      assert_response :success
    end

    test "should get edit" do
      get :edit, id: @form_design
      assert_response :success
    end

    test "should update form_design" do
      patch :update, id: @form_design, form_design: { content: @form_design.content, form_type: @form_design.form_type, free: @form_design.free, name: @form_design.name, sequence: @form_design.sequence, slug: @form_design.slug, status: @form_design.status, type: @form_design.type }
      assert_redirected_to form_design_path(assigns(:form_design))
    end

    test "should destroy form_design" do
      assert_difference('FormDesign.count', -1) do
        delete :destroy, id: @form_design
      end

      assert_redirected_to form_designs_path
    end
  end
end
