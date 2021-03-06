# == Schema Information
#
# Table name: products
#
#  id             :integer          not null, primary key
#  name           :string
#  system_name    :string
#  brand_type     :string
#  price          :integer
#  image          :string
#  image_2        :string
#  width          :float
#  height         :float
#  length         :string
#  small_desc     :text
#  desc           :text
#  base_length    :float
#  base_weight    :float
#  base_price     :integer
#  base_cost      :integer
#  base_install   :integer
#  base_sheet     :integer
#  extend_length  :float
#  extend_weight  :float
#  extend_price   :integer
#  extend_cost    :integer
#  extend_install :integer
#  extend_sheet   :integer
#  position       :integer
#  div_weight     :float
#  div_price      :integer
#  div_cost       :integer
#  min_sheet_id   :integer
#  created_at     :datetime
#  updated_at     :datetime
#  category_id    :integer
#

class ProductsController < ApplicationController
  def show
    @product = Product.from_param(params[:id])
    if @product
      @title = "#{@product.name}. #{APP_CONFIG['default_title_tail']}"
      @meta_keywords = "#{@product.name}, #{@product.meta_keywords || APP_CONFIG['meta_keywords_tail']}"
      @meta_description = "#{@product.meta_description || APP_CONFIG['meta_description_tail']}"
    else
      redirect_to root_url
    end
  end

  def detail
    @product = Product.from_param(params[:id])
    if @product
      options = params[:option].split('-')

      if options.size == 5
        pseudo_name = options.shift
      end

      @sheet = Sheet.find_by(id: options[1])
      @sheet_id = @sheet.try(:id ) || 0
      @length = options[2].to_i
      @install = options[3].to_i

      @title = "#{@product.full_name(@length, @sheet)}. #{APP_CONFIG['default_title_tail']}"
      @meta_keywords = "#{@product.full_name(@length, @sheet)}, #{APP_CONFIG['meta_keywords_tail']}"
      @meta_description = "#{@product.full_name(@length, @sheet)} #{APP_CONFIG['meta_description_tail']}"
    else
      redirect_to root_url
    end
  end
end
