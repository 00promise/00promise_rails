class PoliticianDecorator < Draper::Decorator
  delegate_all

  def img_html
    h.image_tag model.img.url(:thumb), :style=>"width: 100px; height: 100px"
  end
  def bg_img_html
    h.image_tag model.bg_img.url(:thumb), :style=>"width: 100px; height: 100px"
  end
  def current_age
  	today = Date.today
	d = Date.new(today.year, model.birthday.month, model.birthday.day)
	age = d.year - model.birthday.year - (d > today ? 1 : 0)
	age
  end
end
