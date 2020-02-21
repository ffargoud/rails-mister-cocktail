Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'cocktails#index'

  resources :cocktails, only: %i[index new create show] do
        resources :doses, only: %i[create new]
      end
  resources :doses, only: :destroy
end

# dose = Dose.find(4)
# dose.destroy
