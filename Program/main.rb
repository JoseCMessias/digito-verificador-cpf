
puts "==="
print "Digite o seu cpf: "
cpf = gets.chomp # 535.950.256     -87

cpf = cpf.delete(".")

multiplicador = 10
soma = 0
for indice in 0..8
    soma += (cpf[indice].to_i * multiplicador)
    multiplicador -= 1
end
resto = soma % 11

if resto < 2
    digito1 = 0
end
if resto >= 2 
    digito1 = 11 - resto
end

cpf += digito1.to_s

multiplicador = 11
soma = 0
for indice in 0..9
    soma += (cpf[indice].to_i * multiplicador)
    multiplicador -= 1
end
resto = soma % 11

if resto < 2
    digito2 = 0
end
if resto >= 2 
    digito2 = 11 - resto
end

puts "Os digitos do CPF são: #{digito1.to_s + digito2.to_s}"