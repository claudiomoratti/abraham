class AbrahamHistoriesController < ApplicationController
  def create
    @abraham_history = AbrahamHistory.new(abraham_history_params)
    respond_to do |format|
      if @abraham_history.save
        format.json { render :show, status: :created, location: @abraham_history }
      else
        format.json { render json: @abraham_history.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  # Never trust parameters from the scary internet, only allow the white list through.
  def abraham_history_params
    params.require(:abraham_history).permit(:controller_name, :action_name, :tour_name)
  end
end