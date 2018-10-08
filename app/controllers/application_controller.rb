class ApplicationController < ActionController::API
  def render_js data, mes
    render json: {
      error: data.present? ? true : false,
      message: mes,
      data: data
    }, status: data.present? ? 200 : 500
  end
end
