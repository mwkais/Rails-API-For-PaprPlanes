Rails.application.routes.draw do
post 'userLoad', to: 'main_view_controller#userLoad'
post 'postLoad', to: 'main_view_controller#postLoad'
post 'requestLoad', to: 'main_view_controller#requestLoad'
end
