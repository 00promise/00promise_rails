class IssueDecorator < Draper::Decorator
  delegate_all

  def issue_type_html
    if model.issue_type == 1
      h.content_tag :span, "New", class: "status_tag red"
    elsif model.issue_type == 2
      h.content_tag :span, "Hot", class: "status_tag orange"
    else
      h.content_tag :span, "None", class: "status_tag green"
    end
  end

end
