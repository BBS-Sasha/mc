local URL = "https://discord.com/api/webhooks/1374004634955415633/AqDSwuSMUs_mOEMDsQ0UHHO4OjKtjaRI0Rgz9QyAomx7CV1cZOr4shKk6zrE4caaytpy"

function webhook(msg)
    data = '{"content": "', msg, '","username":"Pontifex","avatar_url":"https://upload.wikimedia.org/wikipedia/commons/thumb/d/d3/Coat_of_Arms_of_the_Holy_See_%28red%29.svg/800px-Coat_of_Arms_of_the_Holy_See_%28red%29.svg.png}"'
	print(data)
    headers = {}
    headers["Content-Type"] = "application/json"

    return http.post(URL, data, headers)
end

webhook("Test message")
repeat
    event, url, err = os.pullEvent("http_failure")
until url == URL
print("The URL " .. url .. " could not be reached: " .. err)
