require "iex-ruby-client"

class StocksController < ApplicationController
  def index
    @stocks = Stock.all
    @stock = Stock.new
  end

  def create
    if params[:stock].blank?
      flash.now[:danger] = "Empty ticker"
    else
      client = IEX::Api::Client.new(publishable_token: Rails.application.credentials.iex_public_token)
      quote = client.quote(params[:stock]["symbol"])
      company = client.company(params[:stock]["symbol"])
      stat = client.key_stats(params[:stock]["symbol"])

      @stock = Stock.new(
        symbol: params[:stock]["symbol"],
        position: params[:stock]["position"],
        company_name: company.company_name,
        latest_price: quote.latest_price,
        ytd_change_percent: (stat.ytd_change_percent * 100),
        industry: company.industry,
      )
      @stock.user = User.find_by(role: "master")

      if (@stock.save)
        redirect_to stocks_path
      else
        flash.now[:danger] = "Something went wrong" unless @stock
      end
    end
  end

  def destroy
    @stock = Stock.find(params[:id])
    @stock.destroy
    flash[:notice] = "Stock was successfully obliterated"
    redirect_to stocks_path
  end
end
