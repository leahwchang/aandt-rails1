# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require_relative 'config/application'

Rails.application.load_tasks

namespace :cms do
	desc "Bootstraps the CMS with default settings."
	task bootstrap: :environment do
		Page.create! title: "Demo Page", body: "Hello!", slug: "demo"
		Setting.create! key: "homepage", value: "/demo"
	end
end
