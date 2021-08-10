ProgramManager::Engine.routes.draw do
  scope :api do
    resources :transactions
  end
end
