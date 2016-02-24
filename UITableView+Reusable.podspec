Pod::Spec.new do |s|
  s.name         = "UITableView+Reusable"
  s.version      = "1.1"
  s.summary      = "Easier reusuable cells in Swift"
  s.license      = 'BSD'
  s.homepage     = 'https://github.com/mwildeboer/UITableView-Reusable'
  s.author       = { "Menno Wildeboer" => "ome.menno@gmail.com" }
  s.platform     = :ios, '8.0'
  s.source       = { :git => "https://github.com/mwildeboer/UITableView-Reusable.git", :tag => "1.1" }
  s.source_files = 'UITableView+Reusable/*.swift'
end
