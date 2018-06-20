class PizzaOrdersController < ApplicationController
  before_action :set_pizza_order, only: [:show, :edit, :update, :destroy]

  # GET /pizza_orders
  # GET /pizza_orders.json
  def index
    @pizza_orders = PizzaOrder.all
  end

  # GET /pizza_orders/1
  # GET /pizza_orders/1.json
  def show
  end

  # GET /pizza_orders/new
  def new
    @pizza_order = PizzaOrder.new
  end

  # GET /pizza_orders/1/edit
  def edit
  end
  def show_my
    @pizza_orders = CustomerOrder.find_by(customer_id: current_customer, active: true)
    @my_pizzas = Order.find_by(id: @pizza_orders).pizzas

  end

  # POST /pizza_orders
  # POST /pizza_orders.json
  def create
    @pizza = Pizza.new
    @pizza.recipe_id= params[:recipe_id]
    @pizza.crust_id = params[:crust_id]
    @pizza.save
    custorder = CustomerOrder.find_by(customer_id: current_customer)
    if custorder==nil
      @order = Order.new
      @order.save
      @custor = CustomerOrder.new
      @custor.customer_id = current_customer.id
      @custor.order_id = @order.id
      @custor.active= true
      @custor.save



    else
      if CustomerOrder.find_by(customer_id: current_customer, active: false)
        @order = Order.new
        @custor = CustomerOrder.new
        @order.save
        @custor.customer_id = current_customer
        @custor.order_id = @order.id
        @custor.active= true
        @custor.save
      else
        @order = CustomerOrder.find_by(customer_id: current_customer, active: true)
      end

    end


    @pizza_order = PizzaOrder.new
    @pizza_order.pizza_id = @pizza.id
    @pizza_order.order_id = @order.id
    respond_to do |format|
      if @pizza_order.save
        format.html { redirect_to show_my_path, notice: 'Pizza order was successfully created.' }
        format.json { render :show, status: :created, location: @pizza_order }
      else
        format.html { render :new }
        format.json { render json: @pizza_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pizza_orders/1
  # PATCH/PUT /pizza_orders/1.json
  def update
    respond_to do |format|
      if @pizza_order.update(pizza_order_params)
        format.html { redirect_to @pizza_order, notice: 'Pizza order was successfully updated.' }
        format.json { render :show, status: :ok, location: @pizza_order }
      else
        format.html { render :edit }
        format.json { render json: @pizza_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pizza_orders/1
  # DELETE /pizza_orders/1.json
  def destroy
    @pizza_order.destroy
    respond_to do |format|
      format.html { redirect_to pizza_orders_url, notice: 'Pizza order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pizza_order
      @pizza_order = PizzaOrder.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.

    def pizza_order_params
      params.require(:pizza_order).permit(:pizza_id,:crust_id,:recipe_id)
    end
end
