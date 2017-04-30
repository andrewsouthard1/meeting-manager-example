class MeetingsController < ApplicationController
  def index
    if params[:tag]
      @meetings = Tag.find_by(name: params[:tag]).meetings
    else
      @meetings = Meeting.all
    end
    render 'index.html.erb'
  end

  def show
    @meeting = Meeting.find_by(id: params[:id])
    render 'show.html.erb'
  end

  def new
    @meeting = Meeting.new
    @tags = Tag.all
    render 'new.html.erb'
  end

  def create
    # make the new meeting
    @meeting = Meeting.new(
      notes: params[:notes] ,
      address: params[:address] ,
      name: params[:name] ,
      start_time: params[:start_time] ,
      end_time: params[:end_time]
    )
    if @meeting.save
      flash[:success] = "You totally just made a new meeting"
      redirect_to "/meetings/#{@meeting.id}"
    else
      render 'new.html.erb'
    end
  end

  def edit
    @meeting = Meeting.find_by(id: params[:id])
    render 'edit.html.erb'
  end

  def update
    @meeting = Meeting.find_by(id: params[:id])
    @meeting.update(
      notes: params[:notes] ,
      address: params[:address] ,
      name: params[:name] ,
      start_time: params[:start_time] ,
      end_time: params[:end_time]
    )
    if @meeting.update
      flash[:success] = "Meeting updated"
      redirect_to "/meetings/#{@meeting.id}"
    else
      flash[:danger] =  
    
  end

end
