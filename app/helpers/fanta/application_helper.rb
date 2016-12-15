module Fanta
  module ApplicationHelper
		
    def fanta_root_path
			'/'
      # if request.domain =~ /mng/
      #   '/'
      # else
      #   '/mng/'
      # end
			
    end
		
	  def fanta_statuses
	    {
	      'public' => '公開',
	      'private' => '非公開',
	    }
	  end
		
		def fanta_project_model_items
	    {
	      'sprite' => '記事管理システム::SPRITE',
	      'skal' => 'イベント管理システム::SKAL',
				'hospital' => '病院管理システム::HOSPITAL',
	    }
		end
		
	  def fanta_get_message_type(type)
	    types = {"notice" => "success", "error" => "error", "alert" => "error"}
	    types[type]
	  end
		
  end
end
