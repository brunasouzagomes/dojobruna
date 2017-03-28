#Cadastro Novo Funcionário
Dado(/^que eu esteja na pagina do site orangehrm$/) do                            
  visit "https://enterprise-demo.orangehrmlive.com" #acessa o site
end                                                                               
                                                                                  
Quando(/^preencher os dados do funcionario$/) do                                  
  fill_in('txtUsername',:with => 'admin') #preenche o usuario
  fill_in('txtPassword',:with => 'admin') #preenche a senha
  click_button('btnLogin') #clica no botao login
  click_link('PIM') #clica no menu PIM
  click_link('menu_pim_addEmployee') #clica no menu add employee
  fill_in('firstName',:with => 'bruna') #preenche o campo nome
  fill_in('lastName',:with => 'souzass') #preenche o campo sobrenome
  select('Australian Regional HQ',:from => 'location') #seleciona a localizacao
  click_button('btnSave') #clica no botao salvar
end                                                                                                                                                            
Entao(/^deverá exibir uma mensagem de sucesso no cadastro$/) do                  
    expect(page).to have_content 'Successfully Saved'
       find(:id,'welcome'). click #clica no menu bemvindo
    click_link('Logout') #realiza logout
    
end                                                                               

#Editar Funcionario cadastrado
Dado(/^que eu esteja logada na pagina lista de empregados$/) do                      
  visit "https://enterprise-demo.orangehrmlive.com"   #acessa o site     
end                                                                                  
                                                                                     
Quando(/^pesquisar o funcionario$/) do                                               
  fill_in('txtUsername',:with => 'admin') #preenche o campo login
  fill_in('txtPassword',:with => 'admin') #preenche o campo senha
  click_button('btnLogin') #clica no botao "Login"
  click_link('PIM') #clica no menu PIM
  click_link('menu_pim_viewEmployeeList') # clica no menu employeed list
  fill_in('empsearch_id',:with => '0090')#preenche o campo ID
  click_button('searchBtn') #clica no botao procurar
  click_link('0090') #Clica no link do nome da pessoa que foi pesquisado
  click_button('btnSave')
  fill_in('personal_txtEmpLastName',:with => 'gomes') #preenche o campo sobrenome
  fill_in('personal_txtEmpMiddleName',:with => 'souza') #preenche o nome do meio
  click_button('btnSave')
end                                                                                  
                                                                                     
Entao(/^deverão ser carregados os dados do mesmo$/) do                               
  expect(page).to have_content 'Successfully Saved'      
end                                                                                  