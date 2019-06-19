# Id do objeto monitorado
id_name = "complete_id_state"

# Nome do dado dinâmico e nome do attributo a ser relacionado
dynamic_data = "d_focos_ams"
id_dyn_join = "complete_id_state"

# Filtro a ser aplicado na tabela de dados dinâmicos
filter_by = "satelite = 'AQUA_M-T'"

# Cria uma string cujo valor represente o total de segundos desde o início do mês
now = get_analysis_date()
start = now.replace(month=1, day=1, hour=0, minute=0, second=0, microsecond=0)
since_start = (now - start).total_seconds()
since_start_fmt = "{}s".format(since_start)

# Realiza a contagem de ocorrências dos dados adicionais em relação ao objeto monitorado
nfocos = occurrence.count(dynamic_data, since_start_fmt, id_name, id_dyn_join, filter_by)

# Salva como resultado da análise (nfocos)
add_value("nfocos", nfocos)