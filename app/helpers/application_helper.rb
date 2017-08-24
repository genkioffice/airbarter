module ApplicationHelper

  def new_current_path(new_locale, current_path)
    if current_path.length < 4
      return "/" + new_locale
    else
      language_pattern = /\/(en|ja|da|ar|fr)\//
      has_language = current_path[0..3] =~ language_pattern ? true : false
      current_path = "/en" + current_path unless has_language
      return "/" + new_locale + current_path[3..-1]
    end
  end
end
