#encoding: utf-8
class ProtectedController < ApplicationController
  before_filter :authenticate_user!, :unless => :devise_controller?
end
