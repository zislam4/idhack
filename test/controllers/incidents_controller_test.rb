require 'test_helper'

class IncidentsControllerTest < ActionController::TestCase
  setup do
    @incident = incidents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:incidents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create incident" do
    assert_difference('Incident.count') do
      post :create, incident: { amount: @incident.amount, country: @incident.country, create_time: @incident.create_time, description: @incident.description, municipality: @incident.municipality, num_occur: @incident.num_occur, region: @incident.region, time_occur: @incident.time_occur, type: @incident.type }
    end

    assert_redirected_to incident_path(assigns(:incident))
  end

  test "should show incident" do
    get :show, id: @incident
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @incident
    assert_response :success
  end

  test "should update incident" do
    patch :update, id: @incident, incident: { amount: @incident.amount, country: @incident.country, create_time: @incident.create_time, description: @incident.description, municipality: @incident.municipality, num_occur: @incident.num_occur, region: @incident.region, time_occur: @incident.time_occur, type: @incident.type }
    assert_redirected_to incident_path(assigns(:incident))
  end

  test "should destroy incident" do
    assert_difference('Incident.count', -1) do
      delete :destroy, id: @incident
    end

    assert_redirected_to incidents_path
  end
end
