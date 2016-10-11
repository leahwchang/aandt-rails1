module Admin::SettingsHelper
	def homepage_options
		grouped_options_for_select({
			"Pages" => Page.all.map { |page| [ page.title, url_for_page(page)] },
			"Categories" => Category.all.map { |category| [ category.name, category_path(category)] }
    }, Setting.where(key: "homepage").first.value)
	end
end
