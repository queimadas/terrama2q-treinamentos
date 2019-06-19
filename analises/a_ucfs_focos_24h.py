# Buffer do poligono monitorado (unidade de conservação federal)
obj_buffer = Buffer()

# Nome do dado dinâmico e nome do attributo a ser relacionado
dynamic_data = "d_focos_ams"

# Filtro a ser aplicado na tabela de dados dinâmicos
filter_by = "satelite = 'AQUA_M-T'" 

# Cria uma string cujo valor represente o total de segundos desde ontem
now = get_analysis_date()
start = now.replace(day=(now.day - 1), hour=0, minute=0, second=0, microsecond=0)
since_start = (now - start).total_seconds()
since_start_fmt = "{}s".format(since_start)

# Realiza a contagem de ocorrências dos dados adicionais em relação ao objeto monitorado
nfocos = occurrence.zonal.count(dynamic_data, since_start_fmt, obj_buffer, filter_by)

# Salva como resultado da análise (nfocos)
add_value("nfocos", nfocos)