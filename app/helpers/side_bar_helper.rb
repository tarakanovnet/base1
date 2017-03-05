module SideBarHelper
  def side_bar_items(ru)
    result = []
   
    
     result << {
      :name => 'Администрирование',
      :icon => 'key',
      :children => [
      {:name => 'Пользователи',
       :controller => :users, :action => :index,
       :icon => 'file-text-o',
       :class => 'long'},
      {:name => 'Добавление',
       :controller => :users, :action => :new,
       :icon => 'user-plus'},
      {:name => ' ', :controller => :floors,
      :action => :index,  :icon => 'file-text-o',
       :class => 'long' },
    ]} 
    result
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
