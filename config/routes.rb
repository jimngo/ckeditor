Ckeditor::Engine.routes.draw do
  scope 'org/:organization_id' do
    resources :pictures, :only => [:index, :create]
    resources :attachment_files, :only => [:index, :create]
  end
  resources :pictures, :only => :destroy
  resources :attachment_files, :only => :destroy
end
