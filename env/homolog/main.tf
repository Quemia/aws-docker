module "Homologacao" {
  source = "../../Infra"

  nome   = "homologacao"
  descricao = "Aplicacao-de-homologacao"
  max = 3
  maquina = "t2.micro"
  ambiente = "Ambiente-de-homologacao"
}
