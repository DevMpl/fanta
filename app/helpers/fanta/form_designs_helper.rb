module Fanta
  module FormDesignsHelper
		
		def fanta_form_type_select
	    {
	      'input' => 'インプット',
	      'radio' => 'ラジオボタン',
				'select_box' => 'セレクトボックス',
				'text' => 'テキスト',
	    }
		end
		
		def form_design_input(form_design, **args)
			
			case form_design.form_type
			when 'input'
				f_input(form_design, **args)
			when 'radio'
				f_radio(form_design, **args)
			when 'select_box'
				f_select_box(form_design, **args)
			when 'text'
				f_text(form_design, **args)
			end
			
		end
		
		def f_input(form_design, **args)
			
		end
		
		def f_radio(form_design, **args)

			form_design.content.split(',')
			
			
			
		end
		
		def f_select_box(form_design, **args)
			
		end
		
		def f_text(form_design, **args)
			
		end
		
		
  end
end
