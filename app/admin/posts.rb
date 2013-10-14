ActiveAdmin.register Post do
	menu :label => "Blog Posts"
	index do
		column :title
		column "Author",:admin_user
		column :category
        column :created_at
        default_actions
    end

    form do |f|
    	f.inputs do
    		f.input :title
    		f.input :body, as: :html_editor
            f.input :category
            f.input :admin_user
    end

    f.buttons
  end
end
