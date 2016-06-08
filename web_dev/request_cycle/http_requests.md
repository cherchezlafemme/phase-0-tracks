### Сommon HTTP status codes:
	* 100 Continue
	* 101 Switching Protocols
	* 200 OK
	* 201 Created
	* 202 Accepted
	* 203 Non-Authoritative Information
	* 204 No Content
	* 300 Multiple Choices
	* 301 Moved Permanently
	* 302 Found
	* 304 Not Modified
	* 307 Temporary Redirect
	* 400 Bad Request
	* 401 Unauthorized
	* 403 Forbidden
	* 404 Not Found
	* 408 Request Timeout
	* 409 Conflict
	* 410 Gone
	* 415 Unsupported Media Type
	* 417 Expectation Failed
	* 500 Internal Server Error
	* 501 Not Implemented
	* 502 Bad Gateway
	* 503 Service Unavailable
	* 504 gateway Timeout
	* 505 HTTP Version Not Supported
	* 550 Permission denied


### The difference between a GET request and a POST request and when might each be used.

GET and POST are two different ways that a form can be submitted from the browser to the webserver.
	
**GET request:**

  - not secure;
  - easy to hack compared to POST;
  - parameters remain in the browser history;
  - GET method is visible to everyone;
  - can be cached;
  - one of the main issues is that it has limitations on the types of data it sends and amount of information it sends. 

GET requests include all required data in the URL.
GET requests NOT a GOOD idea for a PASSWORD/USERNAME form SUBMISSION: If a "GET" request is used, the form parameters are encoded in the URL in what is called a query string. The form parameters can be anything. In the GET request the form parameters (login and password) will be attached to the end of the URL itself. 

**POST request:**

- never cached;
- more secure and less easy to hack;
- have no restrictions on data length;
- don't remain in the browser history.

POST requests is BEST whenever passwords are involved.
POST request passes the form parameters in the body of the HTTP request, not in the URL. This happens behind the scenes, in what can be thought of as an HTTP ‘dialogue’ between your web browser and a webserver. It is also great for constantly updating information like shopping cart.

### Cookie. How does it relate to HTTP requests?

Cookie is a small piece of data sent from a website and stored in the user's web browser while the user is browsing (and sometimes afterwards depending on the type of the cookie). 
####Common uses of cookies:

- session management: cookies remember stateful information, whe you started the session, what you added to the shopping card, etc.
- tracking: cookies record the user's browsing activity (including clicking particular buttons, logging in, or recording which pages were visited in the past);
- personalization: cookies remember arbitrary pieces of information that the user previously entered into form fields such as names, addresses, passwords, and credit card numbers.

When receiving an HTTP request, a server can send a Set-Cookie header with the response. Afterward, the cookie value is sent along with every request made to the same server in the form of a Cookie HTTP header. Additionally, an expiration delay can be specified. Restrictions to a specific domain and path can be specified as well.

>The server sends a **Set-Cookie: name=value** in its response header to set the field. If there is a cookie set then the browser sends a **Cookie: name=value** in its request header.






