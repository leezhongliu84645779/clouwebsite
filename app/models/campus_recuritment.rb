class CampusRecuritment < ActiveRecord::Base
    #set up rails admin
    mount_uploader :attachment, AttachmentUploader
    rails_admin do
        navigation_label '招聘'
        list do 
          field :title do
            label "标题"
          end
          field :position do
            label "职位"
          end
          field :department do
            label "部门"
          end
          field :workPosition do
            label "工作地点"
          end
          field :number do
            label "招聘人数"
          end
          field :deadline do
            label "截止日期"
          end
          field :description do
            label "简介"
            pretty_value do
              value.html_safe
            end
          end
        end
        edit do
          field :title do
            label "标题"
            required true 
          end
          field :position do
            label "职位"
            required true
          end
          field :department do
            label "部门"
            required true
          end
          field :workPosition do
            label "工作地点"
            required true
          end
          field :number do
            label "招聘人数"
            required true
          end
          field :deadline do
            label "截止日期"
            required true
          end
          field :description, :ck_editor do
            label "简介"
            required true
          end
          field :attachment, :carrierwave do
            label "上传简历"
            required true
          end
        end
    end
end
