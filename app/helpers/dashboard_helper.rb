module DashboardHelper
  def menu_item(name, link, active = false)
    link_to name,
            link,
            class: "hover:bg-gray-600 grow inline-flex items-center justify-center p-1 m-1 rounded text-white #{active ? "bg-gray-600" : ""}"
  end
end