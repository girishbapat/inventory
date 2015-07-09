class ReportsController < ApplicationController
  def index
  end

  def create
    logger.debug "In create"
    logger.debug params[:searchtext]


    @category =  Category.where(name:params[:searchtext])
    #@category = Category.all
    send_data @category.to_csv

    @category.each do |row|
      logger.debug row
    end

    #redirect_to root_path
  end

  def generate
    logger.debug "In generate"
    redirect_to root_path
  end

end