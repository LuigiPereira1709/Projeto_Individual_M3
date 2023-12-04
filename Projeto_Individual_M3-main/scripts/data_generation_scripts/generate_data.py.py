import pandas as pd
import random
from faker import Faker

class GeradorDadosFicticios:
    def __init__(self):
        # Carrega os dados de tecnologias e cargos de arquivos JSON
        self.tecnologias_data = pd.read_json('./scripts/files/tec.json')
        self.cargos_data = pd.read_json('./scripts/files/cargos.json')
        # Inicializa o Faker para gerar dados fictícios em português do Brasil
        self.fake = Faker('pt_BR')

    def obter_quantidade_valida(self, mensagem):
        # Método para obter uma quantidade válida do usuário (número inteiro positivo)
        while True:
            try:
                quantidade = int(input(mensagem))
                if quantidade > 0:
                    return quantidade
                else:
                    print("Por favor, digite um número inteiro positivo.")
            except ValueError:
                print("Por favor, digite um número inteiro válido.")

    def colaboradores(self, quantidade):
        # Gera dados fictícios de colaboradores com a quantidade especificada
        dados = []
        for _ in range(quantidade):
            area = random.choice(list(self.cargos_data['cargos'].keys()))
            cargo = random.choice(list(self.cargos_data['cargos'][area].keys()))
            cargo_value = self.cargos_data['cargos'][area][cargo]
            
            dados.append({
                'area': area,
                'nome': self.fake.name(),
                'cargo': cargo_value,
                'telefone': self.fake.phone_number(),
            })
        return pd.DataFrame(dados)

    def empresas(self, quantidade):
        # Gera dados fictícios de empresas com a quantidade especificada
        dados = []
        for _ in range(quantidade):
            dados.append({
                'nome_empresa': self.fake.bs().title(),
                'endereco': self.fake.bairro(),
                'cnpj': self.fake.unique.cnpj(),
                'telefone': self.fake.phone_number()
            })
        return pd.DataFrame(dados)

    def tecnologias(self, quantidade):
        # Gera dados fictícios de tecnologias com a quantidade especificada
        dados = []
        for _ in range(quantidade):
            area = random.choice(list(self.tecnologias_data['tecnologias'].keys()))
            subarea = random.choice(list(self.tecnologias_data['tecnologias'][area].keys()))
            tecnologia = random.choice(self.tecnologias_data['tecnologias'][area][subarea])
            
            dados.append({
                'nome_tecnologia': tecnologia,
                'area_tecnologia': f'{area} - {subarea}',
                'descricao_tec': self.fake.word()
            })
        return pd.DataFrame(dados)

# Instância da classe GeradorDadosFicticios
gerador = GeradorDadosFicticios()

# Solicita a quantidade desejada de dados para cada categoria
quantidade_empresas = gerador.obter_quantidade_valida('Digite a quantidade de dados que deseja gerar para "EMPRESAS":\n')
quantidade_colaboradores = gerador.obter_quantidade_valida('Digite a quantidade de dados que deseja gerar para "COLABORADORES":\n')
quantidade_tecnologias = gerador.obter_quantidade_valida('Digite a quantidade de dados que deseja gerar para "TECNOLOGIAS":\n')

# Solicita um prefixo para os nomes dos arquivos CSV
prefixo = input('Digite um prefixo para os arquivos (exemplo: Test):\n')

# Gera os DataFrames com os dados fictícios
df_colaboradores = gerador.colaboradores(quantidade_colaboradores)
df_empresas = gerador.empresas(quantidade_empresas)
df_tecnologias = gerador.tecnologias(quantidade_tecnologias)

caminho = './data/'

# Salva os DataFrames em arquivos CSV usando o prefixo fornecido
df_empresas.to_csv(f'{caminho}{prefixo}_empresas.csv', index=False)
df_colaboradores.to_csv(f'{caminho}{prefixo}_colaboradores.csv', index=False)
df_tecnologias.to_csv(f'{caminho}{prefixo}_tecnologias.csv', index=False)
