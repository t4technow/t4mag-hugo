
1. What is Django?
	    - **Django is _a high-level Python web framework that encourages rapid development and clean, pragmatic design_.** It takes care of much of the hassle of web development, so you can focus on writing your app without needing to reinvent the wheel. It’s free and open source.
	    
    ##### Features:
    - Django was designed to help developers take applications from concept to completion as quickly as possible.
    - Django includes dozens of extras you can use to handle common web development tasks. **Django takes care of user authentication, content administration, site maps, RSS feeds, and many more tasks — right out of the box.**
    - Django takes security seriously and **helps developers avoid many common security mistakes, such as SQL injection, cross-site scripting, cross-site request forgery and clickjacking. Its user authentication system provides a secure way to manage user accounts and passwords.**
    - **Scalable**: Some of the busiest sites on the planet use Django’s ability to quickly and flexibly scale to meet the heaviest traffic demands.
    - build all sorts of things — from content management systems to social networks to scientific computing platforms.


2. What is **.env** file in Django?
	- A . env file is **an environment file that you may use to store and manage all the environment variables your Django web application will use**. You may also use a . ini file to store your secret parameters.


3. What is an API?
	- **API stands for Application Programming Interface**. In the context of APIs, the word **Application refers to any software with a distinct function**. **Interface can be thought of as a contract of service between two applications.** This contract defines how the two communicate with each other using requests and responses.
	- **APIs are mechanisms that enable two software components to communicate with each other using a set of definitions and protocols.** For example, the weather bureau’s software system contains daily weather data. The weather app on your phone “talks” to this system via APIs and shows you daily weather updates on your phone.

4. What is MVT?
	- The MVT (Model View Template) is a software design pattern. It is a collection of three important components Model View and Template. 
	     - The Model helps to handle database. It is a data access layer which handles the data.
	     - The Template is a presentation layer which handles User Interface part completely.
	     - The View is used to execute the business logic and interact with a model to carry data and renders a template.
	- There is no separate controller and complete application is based on Model View and Template. That's why it is called MVT application.


		     ![[django-mvt-based-control-flow.png]]

5. What is Middleware?
	- Middleware is a lightweight plugin that processes during request and response execution. 
	- Middleware is used to perform a function in the application. The functions can be a security, session, csrf protection, authentication etc.
	- Django provides various built-in middleware and also allows us to write our own middleware. 
	- See, **settings.py** file of Django project that contains various middleware, that is used to provides functionalities to the application. For example, Security Middleware is used to maintain the security of the application.
	- **// settings.py**

```python:django
MIDDLEWARE = [  
      'django.middleware.security.SecurityMiddleware',  
      'django.contrib.sessions.middleware.SessionMiddleware',  
      'django.middleware.common.CommonMiddleware',  
      'django.middleware.csrf.CsrfViewMiddleware',  
      'django.contrib.auth.middleware.AuthenticationMiddleware',  
      'django.contrib.messages.middleware.MessageMiddleware',  
      'django.middleware.clickjacking.XFrameOptionsMiddleware',  
]
```

6. What is CSRRF token and CSRF attack?
	- Cross-Site Request Forgery (CSRF) is an attack that forces authenticated users to submit a request to a Web application against which they are currently authenticated. In a successful **CSRF attack, the attacker causes the victim user to carry out an action unintentionally.** For example, this might be **to change the email address on their account, to change their password, or to make a funds transfer**.
	
	- **A CSRF token is a secure random token (e.g., synchronizer token or challenge token) that is used to prevent CSRF attacks**. The token needs to be unique per user session and should be of large random value to make it difficult to guess. A CSRF secure application assigns a unique CSRF token for every user session.


7. What is ORM queries in Django?
	- ORM stands for **Object Relational Mapper**. The main goal of ORM is to send data between a database and models in an application. It maps a relation between the database and a model. So, ORM maps object attributes to fields of a table.

8. What is makemigrations vs migrate?
	- **Migrations are Django’s way of propagating changes you make to your models (adding a field, deleting a model, etc.) into your database schema.** They’re designed to be mostly automatic, but you’ll need to know when to make migrations, when to run them, and the common problems you might run into.
	-   `migrate`:- which is responsible for applying and unapplying migrations.
	-   `makemigrations`:- which is responsible for creating new migrations based on the changes you have made to your models.
	-   `sqlmigrate`:- which displays the SQL statements for a migration.
	-   `showmigrations`:- which lists a project’s migrations and their status.

9. What is django-admin?
	- `django-admin` is Django’s command-line utility for administrative tasks. This document outlines all it can do.
10. django admin Interface?
	- **Django** provides a default admin interface which can be used to perform create, read, update and delete operations on the model directly. It reads set of data that explain and gives information about data from the model, to provide an instant interface where the user can adjust contents of the application . This is an in-built module and design to execute admin related work to the user.
	- The admin app(django.contrib.admin) is enabled by default and already added into the INSTALLED_APPS list present in the settings.py file.
	- create admin user with manage.py
```
```python:django
	python manage.py createsuperuser
```


11. What contains in Project & App folder?
	- **Project Folder**
		- `__pycache__` :- directory containing .pyc file of all python files in the project folder
		
		- `__init__.py` :- the __init__.py file is a file that is used to mark a directory as a Python         package. Every directory that contains code that you want to be able to import as a simple Python package needs to contain an `__init__.py`
		
		- `asgi.py`:-  **Asynchronous Server Gateway Interface**, describes a common interface between a Python web application and the web server.ASGI allows multiple, asynchronous events per application. Plus, ASGI supports both sync and async apps.
		
		- `settings.py`:- It holds all the configuration values that your web app needs to work; database settings, logging configuration, where to find static files, API keys if you work with external APIs, and a bunch of other stuff.
		
		- `urls.py`:- **A request in Django first comes to urls.py and then goes to the matching function in views.py**. Python functions in views.py take the web request from urls.py and give the web response to templates. **It contains the urlpatterns** to be matched
		
		- `wsgi.py`:- **WSGI stands for Web Server Gateway Interface**, Django's primary deployment platform is WSGI, **the Python standard for web servers and applications**. **It is used to forward requests from a web server** (such as Apache or NGINX) **to a backend Python web application or framework**. From there, responses are then passed back to the webserver to reply to the requestor.

	- 

		**Anatomy of settings.py**
		-  **BASE_DIR**
			- BASE_DIR points to top hierarchy of project i.e. **mysite**, whatever paths we define in project are all relative to BASE_DIR. To use BASE_DIR we will have to use `os` module provided by python.
			- `BASE_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))`
			
		-  **DEBUG**
			- In Development _Error_ is very obvious to occur. There is no fun in writing a program where we do not face any error. but sometimes tackling errors is very hectic. Django provides an inbuild Debugger which makes the developer’s life very easy. 
			- We can use it by doing: `DEBUG = True`
			- In production, **DEBUG = False** is preferred.

		- **ALLOWED_HOSTS**
			- `ALLOWED_HOSTS` is a list having adresses of all domains which can run your django project.
			- When DEBUG set to True :- ALLOWED_HOSTS can be an empty list
			- when DEBUG = False :- ALLOWED_HOSTS can not be an empty list. We have to give hosts name in list. **i.e. ALLOWED_HOSTS=[“127.0.0.1”, “*.heroku.com”]**. “127.0.0.1” represents Your PC, “*.heroku.com” represents this application can be run on heroku also. 

		- **INSTALLED_APPS**
			- In this section, we mention all apps that will be used in our Django project. Previously we made an app **polls** we have to tell Django its existence To do so have to put into INSTALLED_APPS:
			- ```INSTALLED_APPS = [
			        // Some preloaded apps by Django,
			        'polls', // don't forget to quote it and also commas after every app
				]```
		- #### DATABASES
			- Django officially supports the following databases:   
				-   PostgreSQL
				-   MariaDB
				-   MySQL
				-   Oracle
				-   SQLite **<– By Default**
				
		- #### URL Variables
			- URL variables are relative to BASE_DIR. These variables are used to store files either media or static.
			- **Note: Make static and media folders in Parent Directory.**
			
		- **MEDIA_URL**
			- `MEDIA_URL` is relative path to `BASE_DIR`. This variable is use to store the media files.
			- `MEDIA_URL= '/media/'`
			
		- **MEDIA_ROOT**
			- MEDIA_ROOT is absolute path. This variable is use to retrieve the media files.
			- `MEDIA_ROOT= os.path.join(BASE_DIR, 'media')`

		- **STATIC_URL**
			- STATIC_URL is relative path to BASE_DIR. This variable is use to store the static files.
			- `STATIC_URL = '/static/'`

		- **STATIC_ROOT**
			- STATIC_ROOT is absolute path. This variable is use to retrieve the static files.
			- STATIC_ROOT= os.path.join(BASE_DIR, 'static')

> Note: All variable names in Django settings are in CAPITAL.


11. What is session & cookies?
	- **Sessions are server-side files that store the user information, whereas Cookies are client-side files that contain user information on a local computer**. Sessions are cookies dependent, whereas Cookies are not dependent on Session.
	
	1. **Session:**
		- Sessions are **the mechanism used by Django (and most of the Internet) for keeping track of the "state" between the site and a particular browser**. Sessions allow you to store arbitrary data per browser, and have this data available to the site whenever the browser connects.
		- Sessions are stored in server.
		- sessions middleware is used
		
	2. **Cookies:**
		- A cookie is **a small piece of information which is stored in the client browser**. It is used to store user's data in a file permanently (or for the specified time). Cookie has its expiry date and time and removes automatically when gets expire.

12. What is view engine?
	- A Django project can be configured with one or several template engines (or even zero if you don’t use templates). Django ships built-in backends for its own template system, creatively called the Django template language (DTL), and for the popular alternative [Jinja2](https://jinja.palletsprojects.com/). Backends for other template languages may be available from third-parties. You can also write your own custom backend.

13. What are Http methods?
	- HTTP defines a set of **request methods** to indicate the desired action to be performed for a given resource.
	- Each of them implements a different semantic, but some common features are shared by a group of them: e.g. a request method can be [safe](https://developer.mozilla.org/en-US/docs/Glossary/Safe/HTTP), [idempotent](https://developer.mozilla.org/en-US/docs/Glossary/Idempotent), or [cacheable](https://developer.mozilla.org/en-US/docs/Glossary/Cacheable)
		1. `get`
			- The `GET` method requests a representation of the specified resource. Requests using `GET` should only retrieve data.
		2. `head`
			- The `HEAD` method asks for a response identical to a `GET` request, but without the response body.
		3. `post`
			- The `POST` method submits an entity to the specified resource, often causing a change in state or side effects on the server.
		4. `put`
			- The `PUT` method replaces all current representations of the target resource with the request payload.
		5. `delete`
			- The `DELETE` method deletes the specified resource.
		6. `connect`
			- The `CONNECT` method establishes a tunnel to the server identified by the target resource.
		7. `options`
			- The `OPTIONS` method describes the communication options for the target resource.
		8. `trace`
			- The `TRACE` method performs a message loop-back test along the path to the target resource.
		9. `patch`
			- The `PATCH` method applies partial modifications to a resource.


14. What is browser storage?
	- With web storage, **web applications can store data locally within the user's browser**. Before HTML5, application data had to be stored in cookies, included in every server request. Web storage is more secure, and large amounts of data can be stored locally, without affecting website performance.


15. What is virtual environment? Why is it used?
	- virtualenv is used **to manage Python packages for different projects**. Using virtualenv allows you to avoid installing Python packages globally which could break system tools or other projects.

16. What is Http vs Https?
	- **HTTPS is HTTP with encryption and verification**. The only difference between the two protocols is that HTTPS uses TLS (SSL) to encrypt normal HTTP requests and responses, and to digitally sign those requests and responses. As a result, HTTPS is far more secure than HTTP.

17. What is manage.py?
	- Manage.py in Django is **a command-line utility that works similar to the django-admin command**. The difference is that it points towards the project's settings.py file. This manage.py utility provides various commands that you must have while working with Django.

18. What are the other frameworks of python?
	- CherryPy
	- Pyramid
	- Grok
	- Flask
	- turbogears
	- web2py
	- Bottle
	- Tornado

19. What are the other architectures of python?
	- This is yet another design pattern similar to MVC. It is also used for implementing web interfaces and applications but in contrast to MVC, **the controller part is taken care for us by the framework itself**

20. What are forms?
	-  Forms are _basically used for taking input from the user in some manner and using that information for logical operations on databases_.
	- Django provides a Form class which is used to create HTML forms. It describes a form and how it works and appears.
	- Each field of the form class map to the HTML form **`<input>`** element and each one is a class itself, it manages form data and performs validation while submitting the form.
	- eg:-
	``
```python:django
  from django import forms  
  class StudentForm(forms.Form):  
      firstname = forms.CharField(label="Enter first name",max_length=50)  
      lastname  = forms.CharField(label="Enter last name", max_length = 100)
```

21. What is version shifting in virtual environment?


22. What is URL?
	- A URL (Uniform Resource Locator) is _a unique identifier used to locate a resource on the Internet_. It is also referred to as a web address.

23. Template Variables
	- In Django templates, you can render variables by putting them inside `{{ }}` brackets:
	- we can pass it from views.py using context dict
24. Template tags
	 - In Django templates, you can perform programming logic like executing `if` statements and `for` loops.
	 - These keywords, `if` and `for`, are called "template tags" in Django.
	 - To execute template tags, we surround them in `{% %}` brackets.

25. What is template inheritance?
	- Template inheritance **allows you to build a base “skeleton” template that contains all the common elements of your site and defines blocks that child templates can override**.

26. What are blocks and include?
	- In master templates the block tag is **a placeholder that will be replaced by a block in a child template with the same name**. In child templates the block tag is content that will replace the placeholder in the master template with the same name.
	- The include tag **allows you to include a template inside the current template**. This is useful when you have a block of content that is the same for many pages.