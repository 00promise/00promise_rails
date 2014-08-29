ActiveAdmin.register ReplyEvaluation do
  menu :parent => "리플&평가", :priority => 2, :label=>"리플 반응"
  form do |f|
    f.inputs "Reply" do
      f.input :reply, :as=>:select, :collection=>Reply.all.map(&:content), :include_blank => false
      f.input :user, :as=>:select, :collection=>User.all.map(&:email), :include_blank => false
      f.input :eval_type, :include_blank => false
    end
    f.actions
  end

  index do
    selectable_column
    column :id do |reply_eval|
      link_to reply_eval.id, admin_reply_evaluation_path(reply_eval)
    end
    column :reply do |reply_eval|
      link_to reply_eval.reply.content, admin_reply_path(reply_eval.reply) if reply_eval.reply.present?
    end
    column :user
    column :eval_type

    default_actions
  end

  show do
    attributes_table do
        row :id
        row :reply do
          link_to reply_evaluation.reply.content, admin_reply_path(reply_evaluation.reply) if reply_eval.reply.present?
        end
        row :user
        row :eval_type
    end
  end
end
