local URL = "https://discord.com/api/webhooks/875930859599974401/_f5LBJQ2sG4rLZXAAidSr_pNyiNnN77g3jE8KXbHACiNvYooC7THSAGyXaY0yPyh9HxE"

function webhook(msg)
    data = '{"content": "', msg, '","username":"Pontifex","avatar_url":"https://upload.wikimedia.org/wikipedia/commons/thumb/d/d3/Coat_of_Arms_of_the_Holy_See_%28red%29.svg/800px-Coat_of_Arms_of_the_Holy_See_%28red%29.svg.png}"'

    headers = {}
    headers["Content-Type"] = "application/json"

    return http.post(URL, data, headers)
end

webhook("Test message")
