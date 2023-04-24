class HealthChecksController < ApplicationController
    def info
      render json: {
        app_name: 'Your App Name',
        app_version: '1.0',
        environment: Rails.env
      }
    end
  
    def health_check
      # perform some health checks here, for example:
      db_status = ActiveRecord::Base.connection_pool.with_connection(&:active?)
  
      if db_status
        render json: { status: 'OK' }
      else
        render json: { status: 'ERROR' }, status: :service_unavailable
      end
    end
  end
  