class Announcement < ActiveRecord::Base
    rails_admin do
        navigation_label '投资者关系'
        list do
          field :title do
            label "标题"
          end
          field :date do
            label "时间"
          end
          field :type do
            label "公告类型"
          end
          field :link do
            label "链接"
          end
        end
        
        edit do
          field :title do
            label "标题"
          end
          field :date do
            label "时间"
          end
          field :type, :enum do
            label "公告类型"
            enum do
              ['董事会', '监事会',"股东大会", "其他"]
            end
          end
          field :link do
            label "链接"
          end
        end
    end
end
