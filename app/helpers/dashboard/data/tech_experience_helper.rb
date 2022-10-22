module Dashboard::Data::TechExperienceHelper
  def tech_experience_form_url(person, resume, experience, tech_experience)
    if tech_experience.new_record?
      dashboard_person_data_resume_experience_tech_experience_index_path(person, resume, experience)
    else
      dashboard_person_data_resume_experience_tech_experience_path(person, resume, experience, tech_experience)
    end
  end

  def tech_experience_form_method(tech_experience)
    if tech_experience.new_record?
      :post
    else
      :patch
    end
  end
end
