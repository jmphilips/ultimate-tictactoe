class BoardsController < ApplicationController
  def create
    board = Board.create!
    render json: board, headers: :created
  end

  def show
    board = Board.find(params[:id])
    render json: board, headers: :ok
  end

  def move
    board = Board.find(params[:id])
    board.add_move(params[:subgame], params[:cell])
    render json: board, headers: :ok
  end
end