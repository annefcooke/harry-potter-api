require_relative "./services/potter_services/potter_show_service"
require_relative "./services/potter_services/potter_index_service"

class PotterAPI

  def potter_show_service
    PotterShowService.new
  end

  def potter_index_service
    PotterIndexService.new
  end

end
