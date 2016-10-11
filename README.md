# README


* Versão do Ruby
	+ 2.3.0

* Versão do Rails
	+ 5.0

* Documentação da API
	+ http://localhost:3000/api/v1/swagger_doc
	+ Versão da API será definida em: headers['Accept'] = "application/vnd.api-coding-test-v#{version}"
	+ Token de autorização será definido em: headers['Authorization']
	+ Versão da API: 1

- Formato das Respostas:		
	+ Normal
	```
	{
	   data: {},
	   meta: {
	      code: 200,
	      message: "success"
	   }
	}
	```
	+ Se tiver paginação:
	```
	{
	   data: {},
	   meta: {
	      code: 200,
	      message: "success",
	      current_page: 1,
	      next_page: 2,
	      prev_page: -1,
	      total_pages: 2,
	      total_count: 21
	   }
	}
	```
	
	+ `prev_pave = -1` if current_page = 1
	+ `next_pave = -1` if current_page = last_page

* Nota:
  + Tags HTML que serão extraidas será definido em: app/models/html_element.rb
  + Quando definir uma nova tag HTML adicione a categoria da tag no hash CATEGORIES, e defina um método para pegar essa categoria(Se ela for nova) em: app/services/html_element_service.rb (Conferir get_header_tags e get_links method para mais detalhes)

* Como Rodar a suíte de testes
  + ``` rspec spec/api ```

