#!/usr/bin/ruby

require "vrlib"

# from require_all gem:
require_rel 'src/'

# Criar uma conta
conta = Conta.new
conta.numero = "261116"
conta.senha = "abcde"
conta.saldo = 400.0

# Criar um cliente 
cliente = Cliente.new(conta)
cliente.nome = "Clenisson"
cliente.cpf = "12345678911"

# Inicia a aplicação do banco passando nosso cliente como parâmetro
banco = BancoConhecimentoDigital.new(cliente)
banco.show_glade()

# Este arquivo é o arquivo principal
