Dado('que o usuario consulte informacoes de tipo de estabelecimento') do
    @base_url = 'https://portal.vr.com.br'
end

Quando('ele realizar o GET') do
    @response = HTTParty.get("#{@base_url}/api-web/comum/enumerations/VRPAT/")
end

Entao('o status code deve ser {string}') do |string|
    expect(@response.code).to eql string.to_i
end

E ('a chave {string} deve ser retornada') do |string|
    expect(@response.has_key?(string)).to eql true
    puts @response[string].sample
    # puts @response.fetch_values(string)
end
