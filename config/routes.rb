RailsApp::Application.routes.draw do
  devise_for :users
  root to: 'welcome#index'

  TheRoleManagementPanel::Routes.mixin(self)

  get 'welcome/index'
  get 'welcome/profile'

  get 'autologin'         => 'welcome#autologin', as: :autologin
  put 'users/change_role' => "users#change_role", as: :user_change_role

  resources  :users, only: [:edit, :update]

  resources  :pages do
    collection do
      get :my
      get :manage
    end
  end
end
