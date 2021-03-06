module ApplicationHelper

  def devise_error_messages
    return "" if resource.errors.empty?

    html = ""
    messages = resource.errors.full_messages.each do |errmsg|
      html += <<-EOF
      <div class="alert alert-danger alert-dismissible" role="alert">
        <button type="button" class="close" data-dismiss="alert">
          <span aria-hidden="true">&times;</span>
          <span class="sr-only">close</span>
        </button>
        #{errmsg}
      </div>
      EOF
    end
    html.html_safe
  end

  def devise_error_messages?
    resource.errors.empty? ? false : true
  end

  def bootstrap_class_for(flash_type)
    case flash_type
      when "success"
      "success"
      when "error"
      "danger"
      when "alert"
      "warning"
      when "notice"
      "info"
      else
      flash_type.to_s
    end
  end

  def wd
    wd = ["日", "月", "火", "水", "木", "金", "土"]
  end
end
