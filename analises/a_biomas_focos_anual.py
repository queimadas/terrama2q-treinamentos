# Id do objeto monitorado
id_name = "id"

# Nome do dado dinâmico e nome do attributo a ser relacionado
dynamic_data = "d_focos_ams"
id_dyn_join = "bioma_id"

# Filtro a ser aplicado na tabela de dados dinâmicos
filter_by = "satelite = 'AQUA_M-T'"

# Cria uma string cujo valor represente o total de segundos desde o início do ano
now = get_analysis_date()
first_day = now.replace(month=1, day=1, hour=0, minute=0, second=0, microsecond=0)
since_fd = (now - first_day).total_seconds()
since_fd_fmt = "{}s".format(since_fd)

# Realiza a contagem de ocorrências dos dados adicionais em relação ao objeto monitorado
nfocos = occurrence.count(dynamic_data, since_fd_fmt, id_name, id_dyn_join, filter_by)

# Salva como resultado da análise (nfocos)
add_value("nfocos", nfocos)