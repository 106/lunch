class MenusController < ApplicationController
  respond_to :html, :js
  before_filter :find_menu, only: [:show, :edit, :update, :destroy]

  def show
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @menu }
    end
  end

  def new
    @menu = Menu.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @menu }
    end
  end

  def edit
  end

  def create
    @menu = Menu.create(params[:menu])
  end

  def update

    respond_to do |format|
      if @menu.update_attributes(params[:menu])
        format.html { redirect_to @menu, notice: 'Menu was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @menu.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @menu.destroy

    respond_to do |format|
      format.html { redirect_to menus_url }
      format.json { head :no_content }
    end
  end

  private

    def find_menu
      @menu = Menu.find(params[:id])
    end
end
