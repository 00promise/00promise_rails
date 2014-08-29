class LinkDecorator < Draper::Decorator
  delegate_all

  def url_html
    handle_none model.url do
      h.link_to model.url, model.url
    end
  end

  private
  def handle_none(value)
    if value.present?
      yield
    else
      h.content_tag :span, "None given", class: "none"
    end
  end
end
