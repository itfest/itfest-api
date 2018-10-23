class DownloadsController < ApplicationController
  def download
    filename = [params[:filename], params[:format]].join('.')
    path = Rails.root.join( 'uploads/download/file', filename )

    if File.exists?(path)
      send_file( path, x_sendfile: true )
    else
      not_found #method from application controller 
    end
  end
end
