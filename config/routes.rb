Fanta::Engine.routes.draw do
  
	resources :projects
	
	scope '(:project_model)' do
		get '/form_design/settings' => 'projects#settings', as: :setting_project_form_design
		patch '/form_design/settings/regist' => 'projects#settings_regist', as: :regist_setting_project_form_design
	end
	
end