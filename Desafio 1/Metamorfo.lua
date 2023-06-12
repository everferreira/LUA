-- Habilitar UTF-8 no terminal
os.execute("chcp 65001")

-- Criatura
local creatureName = "Metamorfo"
local description = "Uma criatura misteriosa e versátil que pode se transformar em qualquer forma."
local sound = "???"
local favoriteTime = "Indefinido"
local favoriteFood = "Qualquer coisa"

-- Atributos
local attackAttribute = 8
local defenseAttribute = 6
local vitalityAttribute = 10
local speedAttribute = 9
local intelligenceAttribute = 7
local stealthAbility = "Camuflagem"
local explosionAbility = "Explosão"

-- função que recebe um atributo e nos retorna uma barra de progresso em string / texto
local function getProgressBar(attribute)
    local fullChar = "⬜"
    local emptyChar = "⬛"

    local result = ""
    for i = 1, 10, 1 do
        if i <= attribute then
            result = result .. fullChar
        else
            result = result .. emptyChar
        end
    end
    return result
end

-- Cartão
print("===================================================")
print("| ")
print("| " .. creatureName)
print("| " .. description)
print("| ")
print("| Som: " .. sound)
print("| Horário Favorito: " .. favoriteTime)
print("| Comida Favorita: " .. favoriteFood)
print("| ")
print("| Atributos")
print("|    Ataque:       " .. getProgressBar(attackAttribute))
print("|    Defesa:       " .. getProgressBar(defenseAttribute))
print("|    Vitalidade:   " .. getProgressBar(vitalityAttribute))
print("|    Velocidade:   " .. getProgressBar(speedAttribute))
print("|    Inteligência: " .. getProgressBar(intelligenceAttribute))
print("| ")
print("| Habilidades")
print("|    Furtividade:  " .. stealthAbility)
print("|    Explosão:     " .. explosionAbility)
print("| ")
print("===================================================")
