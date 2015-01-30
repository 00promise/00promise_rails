class UserDecorator < Draper::Decorator
  delegate_all

  def img_html
    h.image_tag model.img.url(:thumb), :style=>"width: 100px; height: 100px"
  end

end
