class ApplicationController < ActionController::API
  protected

  def validate_user
    return render_403 unless user 
    return render_403 unless user.api_key == api_key
  end

  def render_403
    render json: { message: 'Access Denied'}.to_json, status: 401 
  end

  private

    def api_id
      request.headers['api-id']
    end

    def api_key
      request.headers['api-key']
    end

    def user
      User.find_by(api_id: api_id)
    end
end
