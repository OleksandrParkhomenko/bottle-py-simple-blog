from bottle import route, run, template,request, redirect, Bottle
import bottle_mysql


app = Bottle()
plugin = bottle_mysql.Plugin(dbuser='root', dbpass='root', dbname='blog')
app.install(plugin)

__login = ""
__password = ""
__signed_in = False

@app.route('/')
def hello(login="", password=''):
    print("index", __login, __password)
    return template('templates/index', login=__login, password=__password)

@app.route('/info')
def info():
    return template('templates/info',
        login=__login, password=__password,signed_in=__signed_in)

@app.route('/login')
def login():
    return template('templates/login')

@app.route('/login', method='POST')
def do_login(db):
    login = request.forms.get('login')
    password = request.forms.get('password')
    print(login, password)
    db.execute('INSERT INTO users(login, pass) VALUES(\"{}\", \"{}\")'.format(login, password))
    __login, __password = login, password
    __signed_in = True
    print("logged in")
    redirect ('/')

@app.route('/register')
def register():
    return "Register page"

@app.route('/signup', method="POST")
def sign_up():
    return "Posted"

@app.route('/all_users')
def cover(db):
    db.execute('SELECT * FROM users')
    return template('templates/test', data=db)




@app.route('/header')
def header():
    return template('templates/navbar', signed_in = __signed_in)



if __name__ == "__main__":
    app.run(host='localhost', port=8080, debug=True, reloader=True)
