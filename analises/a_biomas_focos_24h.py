""" Análise de ocorrência de focos diários nos biomas brasileiros.
    Para uso com dados do TerraMA2Q.
    """
__author__ = "Programa Queimadas - INPE"
__email__ = "queimadas@inpe.br"

# Data/Hora da análise corrente
now = get_analysis_date()

# Data/Hora do dia anterior
yesterday = now.replace(day=(now.day - 1), hour=0, minute=0, second=0, microsecond=0)

# Segundo desde o dia anterior até a análise corrente
total_seconds = (now - yesterday).total_seconds()

# Contagem dos focos neste período de segundos para cada atributo na tabela s_biomas
nfocos = occurrence.count("d_focos_ams", "%ss" % total_seconds, "id", "bioma_id", "satelite='AQUA_M-T'")

# Adiciona valor da contagem como resultado da análise
add_value("name", get_value("name"))
add_value("nfocos", nfocos)