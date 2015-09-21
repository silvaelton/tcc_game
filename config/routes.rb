Rails.application.routes.draw do

  root 'rounds#groups'
  
  get 'jogada',   to: 'rounds#index',     as: 'play'
  get 'sucesso',  to: 'rounds#success',   as: 'success'
  get 'grupos',   to: 'rounds#groups',    as: 'groups'
  get 'seu-nome', to: 'rounds#your_name', as: 'your_name'
end
