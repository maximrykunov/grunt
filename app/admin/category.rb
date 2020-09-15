ActiveAdmin.register Category do

  permit_params :name, :parent_id, :system_name, :description, :visible, :position, :meta_keywords, :meta_description

  around_action do |controller, action|
    Category.class_eval do
      alias :__active_admin_to_param :to_param
      def to_param() id.to_s end
    end

    begin
      action.call
    ensure
      Category.class_eval do
        alias :to_param :__active_admin_to_param
      end
    end
  end

  index do
    selectable_column
    id_column
    column :name
    column :system_name
    actions
  end

  form do |f|
    f.inputs do
      f.input :name
      f.input :parent
      f.input :system_name
      f.input :meta_keywords, :input_html => { :rows => 3 }
      f.input :meta_description, :input_html => { :rows => 3 }
      f.input :description, as: :ckeditor
    end

    actions
  end
end
