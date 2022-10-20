module Dashboard::Data::EducationHelper
  def education_form_url(person, resume, education)
    if education.new_record?
      dashboard_person_data_resume_education_index_path(person, resume)
    else
      dashboard_person_data_resume_education_path(person, resume, education)
    end
  end

  def education_form_method(education)
    if education.new_record?
      :post
    else
      :patch
    end
  end
end
