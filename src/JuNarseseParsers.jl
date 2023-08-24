"""
JuNarseseParsers 入口模块

功能：在JuNarsese的基础上，增加与JSON、字节码、XML的互转支持
"""
module JuNarseseParsers

using JuNarsese
using JuNarsese.Util # 共用Util库
using JuNarsese.Conversion

# 导入待修改符号
import JuNarsese.Conversion: data2narsese, narsese2data

# 导出修改后的符号
export data2narsese, narsese2data

# 导入各个文件 #

# XML
include("parsers/xml.jl")

# S-表达式
include("parsers/s_expr.jl")

# JSON
include("parsers/json.jl")

# YAML
include("parsers/yaml.jl")

# TOML
include("parsers/toml.jl")

# 序列化
include("parsers/serialization.jl")

# Lerche(Lark)
include("parsers/lark.jl")

# Pika(PikaParser)
include("parsers/pika.jl")

end # module
