""" Análise de ocorrência de focos diários por país.
    Para uso com dados do TerraMA2Q.
    """
__author__ = "Programa Queimadas - INPE"
__email__ = "queimadas@inpe.br"

# Id do objeto monitorado
id_name = "id_0"

# Nome do dado dinâmico e nome do attributo a ser relacionado
dynamic_data = "d_focos_ams"
id_dyn_join = "id_0"

# Filtro a ser aplicado na tabela de dados dinâmicos
filter_by = "satelite = 'AQUA_M-T'"

# Cria uma string cujo valor represente o total de segundos desde ontem
exec_date = get_analysis_date()
analysis_date = exec_date.replace(day=(exec_date.day - 1), hour=0, minute=0, second=0, microsecond=0)
exec_date_seconds = (exec_date - analysis_date).total_seconds()
exec_date_seconds_fmt = "{}s".format(exec_date_seconds)

# Realiza a contagem de ocorrências dos dados adicionais em relação ao objeto monitorado
nfocos = occurrence.count(dynamic_data, exec_date_seconds_fmt, id_name, id_dyn_join, filter_by)

# Salva como resultado da análise (nfocos)
add_value("start_analysis_date", str(analysis_date))
add_value("end_analysis_date", str(exec_date))
add_value("nfocos", nfocos)