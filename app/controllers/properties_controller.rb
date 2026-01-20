class PropertiesController < ApplicationController
  def index
    @properties = Property.all
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
    @property = Property.find(params[:id])

    if @property.is_a?(SingleUnitProperty)
      render partial: "single_unit_properties/edit", locals: { single_unit_property: @property }
    elsif @property.is_a?(MultiUnitProperty)
      render partial: "multi_unit_properties/edit", locals: { multi_unit_property: @property }
    end
  end

  def update
  end

  def destroy
  end
end
