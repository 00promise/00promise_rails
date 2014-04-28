class VersusDecorator < Draper::Decorator
  delegate_all

  def bg_img_html
    h.image_tag model.bg_img.url(:thumb), :style=>"width: 100px; height: 100px"
  end

end
