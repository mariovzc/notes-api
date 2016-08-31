class NotesController < ApplicationController
  before_action :set_note, only: [:show, :update, :destroy]
  def index
    notes = Note.all
    render json: notes, status: 200
  end
  def create
    note = Note.save(notes_params)
    if note.save
      render json: note, status: 200
    else
      render json: "Error Creando la Nota".to_json, status: :unprocessable_entity
    end
  end
  def update
    if @note.update(notes_params)
      render json: @note, status: 200
    else
      render json: "Error Actualizando el Registro".to_json, status: :unprocessable_entity
    end
  end
  def destroy
    @note.destroy
    render json: "ok".to_json, status: 202
  end
  def show
    render json: @note, status: 200
  end

  private
  def set_note
    @note  = Note.find(params[:id])
  end
  def notes_params
    params.require(:note).permit(:data, :title)
  end
end
