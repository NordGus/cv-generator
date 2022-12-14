module Dashboard::Data::LanguagesHelper
  def language_form_url(person, resume, language)
    if language.new_record?
      dashboard_person_data_resume_languages_path(person, resume)
    else
      dashboard_person_data_resume_language_path(person, resume, language)
    end
  end

  def language_form_method(language)
    if language.new_record?
      :post
    else
      :patch
    end
  end
end
