""" Análise de ocorrência de focos anuais por município.
    Para uso com dados do TerraMA2Q.
    """
__author__ = "Programa Queimadas - INPE"
__email__ = "queimadas@inpe.br"

# Data/hora da análise
now = get_analysis_date()

# Primeiro dia do ano que ocorre a análise
first_day = now.replace(month=1, day=1, hour=0, minute=0, second=0, microsecond=0)

# Segundo desde o primeiro dia do ano
since_fd = (now - first_day).total_seconds()

# Contagem dos focos de calor desde o ínicio do ano para os municípios do objeto monitorado (tabela s_municipios)
nfocos_anual = occurrence.count("d_focos_ams", "%ss" % since_fd, "complete_id_munic", "complete_id_munic", "satelite='AQUA_M-T'")

# Adiciona valor da contagem à tabela da análise com o nome da coluna igual a nfocosanual
add_value("nfocosanual", nfocos_anual)
add_value("location_name", "{}, {} - {}".format(get_value("name_0"), get_value("name_1"), get_value("name_2")))