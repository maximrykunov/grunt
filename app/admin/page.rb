ActiveAdmin.register Page do

  permit_params :system_name, :title, :meta_keywords, :meta_description, :content, :visible, :show_in_menu, :position

  controller do
    def find_resource
      scoped_collection.friendly.find(params[:id])
    end
  end

  index do
    selectable_column
    id_column
    column :title
    column :system_name
    actions
  end

  form do |f|
    f.inputs do
      f.input :title
      f.input :system_name
      f.input :meta_keywords, :input_html => { :rows => 3 }
      f.input :meta_description, :input_html => { :rows => 3 }
      f.input :visible
      f.input :show_in_menu, title: 'fuck'
      f.input :position
      f.input :content, as: :ckeditor
    end

    actions
  end

end
