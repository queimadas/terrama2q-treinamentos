# ------------------------------------------------------------------------------#
#                                 Versão: 1.1.0                                 #
#                              Autor: Jonatas Leon                              #
# ------------------------------------------------------------------------------#
# Análises zonais são utilizadas quando os objetos envolvidos (objeto monitorado e
# dados dinâmicos) não têm um atributo (campo) em comum. Assim, o relacionemento é
# dado em função dos atributos geográficos.

# Buffer (geometria) do poligono monitorado.
obj_buffer = Buffer()

# Nome do dado dinâmico e nome do attributo a ser relacionado
dynamic_data = "d_focos_ams"

# Filtro a ser aplicado na tabela de dados dinâmicos
# AQUA_M-T é o valor no base para os dados do satélite de referência
filter_by = "satelite = 'AQUA_M-T'"

# Recupera data/hora da análise
end = get_analysis_date()

# Determina como início da análise o primeiro dia do mês corrente
start = end.replace(month=1, day=1, hour=0, minute=0, second=0, microsecond=0)

# Com os períodos de início e fim da análise devidamente definidos.
# Cria-se uma formatação em texto (string) para a diferença, em segundos, do horário
# em que a análise ocorre e o início do período a ser analisado
since_start = (start - end).total_seconds()
since_start_fmt = "{}s".format(since_start)

# Realiza a contagem de ocorrências dos dados adicionais em relação
# ao objeto monitorado (obj_buffer) com um filtro para focos do satélite de referência
# a partir do que foi definido como o início do período analisado até o fim do período analisado
nfocos = occurrence.zonal.count(dynamic_data, since_start_fmt, obj_buffer, filter_by)

# Salva contagem de focos como resultado da análise (nfocos) e valores de início e fim da análise
add_value("start_analysis_date", str(start))
add_value("end_analysis_date", str(end))
add_value("nfocos", nfocos)
