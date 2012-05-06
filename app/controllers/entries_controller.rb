class EntriesController < ApplicationController
  auto_complete_for :food, :name
  
  def index
    list
    render :action => 'list'
  end

  # GETs should be safe (see http://www.w3.org/2001/tag/doc/whenToUseGet.html)
  verify :method => :post, :only => [ :destroy, :create, :update ],
         :redirect_to => { :action => :list }

  def list
    @categories = Category.find(:all)
  end

  def new
    @entry = Entry.new
  end

  def create
    client = Client.find(1)
    food = Food.find_by_name(params[:food][:name])
    @category = Category.find(params[:food][:category])
    @entry = client.entries.create(:item => food, :category => @category)
  end

  def edit
    @entry = Entry.find(params[:id])
  end

  def update
    @entry = Entry.find(params[:id])
    if @entry.update_attributes(params[:entry])
      flash[:notice] = 'Entry was successfully updated.'
      redirect_to :action => 'show', :id => @entry
    else
      render :action => 'edit'
    end
  end

  def destroy
    Entry.find(params[:id]).destroy
  end
end
