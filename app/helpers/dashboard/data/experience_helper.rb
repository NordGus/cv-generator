module Dashboard::Data::ExperienceHelper
  def experience_form_url(person, resume, experience)
    if experience.new_record?
      dashboard_person_data_resume_experience_index_path(person, resume)
    else
      dashboard_person_data_resume_experience_path(person, resume, experience)
    end
  end

  def experience_form_method(experience)
    if experience.new_record?
      :post
    else
      :patch
    end
  end
end
