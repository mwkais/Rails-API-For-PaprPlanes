Rails.application.routes.draw do
post 'userlogin', to: 'main_view#login'
get 'userLoad', to: 'main_view#userLoad'
post 'postLoad', to: 'main_view#postLoad'
post 'requestLoad', to: 'main_view#requestLoad'
post 'counterLoad', to: 'main_view#counterLoad'
end
