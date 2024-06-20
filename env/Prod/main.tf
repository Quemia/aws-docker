module "Producao" {
  source = "../../Infra"

  nome   = "producao"
  descricao = "Aplicacao-de-producao"
  max = 5 
  maquina = "t2.micro"
  ambiente = "Ambiente-de-producao"
}
