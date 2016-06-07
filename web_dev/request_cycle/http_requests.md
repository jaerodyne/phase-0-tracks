#Common HTTP Status Codes:
* 400 Bad Request - request sent to server has invalid syntax
* 401 Unauthorized - user trying to access the resource has not been authenticated or has not been authenticated correctly(ie: wrong password)
* 403 Forbidden - user made a valid request but server refuses because user does not have permission to access the requested resource
* 404 Not Found - user can communicate with server but it is unable to locate the requested file or resource
* 500 Internal Server Error - server cannot process the request for an unknown reason
* 502 Bad Gateway - server is a gateway or proxy server that is not receiving a valid response from the backend servers that should actually fulfill the request
* 503 Service Unavailable - server is overloaded or under maintenance
* 504 Gateway Timeout - server is a gateway or proxy server and is not receiving a response from the backend servers within the allowed time period

#GET request vs POST request
GET is used to retrieve remote data, and POST is used to insert/update remote data. Use GET for safe actions and POST for unsafe actions(like dealing with sensitive data). POST is also good for dealing with long requests. 

#What is a cookie?
>According to Wikipedia: An HTTP cookie (also called web cookie, Internet cookie, browser cookie or simply cookie, the latter which is not to be confused with the literal definition), is a small piece of data sent from a website and stored in a user's web browser while the user is browsing that website.

>W3Schools: When a web server has sent a web page to a browser, the connection is shut down, and the server forgets everything about the user.
Cookies were invented to solve the problem "how to remember information about the user":
>*When a user visits a web page, his name can be stored in a cookie.
*Next time the user visits the page, the cookie "remembers" his name.
Cookies are saved in name-value pairs like:
>username = John Doe
When a browser request a web page from a server, cookies belonging to the page is added to the request. This way the server gets the necessary data to "remember" information about users. everything about the user.
