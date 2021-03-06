class ApplicationController < ActionController::Base
  protected

  def devise_parameter_sanitizer
    if resource_class == User
      User::ParameterSanitizer.new(User, :user, params)
    else
      super # Use the default one
    end
  end

  def devise_parameter_sanitizer
    if resource_class == Teacher
      Teacher::ParameterSanitizer.new(Teacher, :teacher, params)
    else
      super # Use the default one
    end
  end
end
