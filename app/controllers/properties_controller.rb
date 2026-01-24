class PropertiesController < ApplicationController
  def index
    authorize :properties
    @properties = Property.all
  end

  def show
    authorize :properties
  end

  def new
    authorize :properties

    property_type = params[:type]

    if property_type == "SingleUnitProperty"
      @property = SingleUnitProperty.new
      render partial: "single_unit_properties/new", locals: { single_unit_property: @property }
    elsif property_type == "MultiUnitProperty"
      @property = MultiUnitProperty.new
      render partial: "multi_unit_properties/new", locals: { multi_unit_property: @property }
    end
  end

  def create
    authorize :properties

    if params[:single_unit_property]
      @property = SingleUnitProperty.new(single_unit_property_params)
    elsif params[:multi_unit_property]
        @property = MultiUnitProperty.new(multi_unit_property_params)
    end

    if @property&.save
      respond_to do |format|
        format.turbo_stream
      end
    end
  end

  def edit
    authorize :properties

    @property = Property.find(params[:id])

    if @property.is_a?(SingleUnitProperty)
      render partial: "single_unit_properties/edit", locals: { single_unit_property: @property }
    elsif @property.is_a?(MultiUnitProperty)
      render partial: "multi_unit_properties/edit", locals: { multi_unit_property: @property }
    end
  end

  def update
    authorize :properties

    @property = Property.find(params[:id])

    if @property&.update(property_params)
      respond_to do |format|
        format.turbo_stream
      end
    end
  end

  def destroy
    authorize :properties

    @property = Property.find(params[:id])

    if @property&.destroy
      respond_to do |format|
        format.turbo_stream
      end
    end
  end

  private
    def single_unit_property_params
      params.require(:single_unit_property).permit(:name, :address, :city, :state, :country, :address_extension)
    end

    def multi_unit_property_params
      params.require(:multi_unit_property).permit(:name, :address, :city, :state, :country, :address_extension)
    end

    def property_params
      params.require(@property.model_name.param_key).permit(:name, :address, :city, :state, :country, :address_extension)
    end
end
