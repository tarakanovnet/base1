module SideBarHelper
  def side_bar_items(ru)
    result = []
   
    
     result << {
      :name => 'Администрирование',
      :icon => 'lock',
      :children => [
      {:name => 'Пользователи',
       :controller => :users, :action => :index,
       :icon => 'file-text-o',
       :class => 'long'},
      {:name => 'Добавление',
       :controller => :users, :action => :new,
       :icon => 'user-plus'}
    ]} 
    result << {
      :name => 'Территория',
      :icon => 'map',
      :children => [
      {:name => 'Строения',
       :controller => :buildings, :action => :index,
       :icon => 'building'},
      {:name => 'Этажи',
       :controller => :floors, :action => :index,
       :icon => 'align-justify'},
      {:name => 'Кабинеты', :controller => :rooms,
       :action => :index,  
       :icon => 'motorcycle'},
      {:name => 'Сотрудники',
       :controller => :workers, :action => :index,
       :icon => 'user'}
    ]} 
  end
  
  def is_open?(ctr, act)
    case ctr.to_s
    when 'users'
      ctr.to_s == controller_name.to_s  
    else
      false
    end
  end
end
