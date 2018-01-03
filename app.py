from flask import Flask, render_template, url_for, request
from flaskext.mysql import MySQL

'''
Free MySQL Hosting
schwartzerengel@web.de
IzsSA5$(TG7Q2Yiu

http://www.phpmyadmin.co
'''

app = Flask(__name__)
mysql = MySQL()
app.config['MYSQL_DATABASE_USER'] = 'sql11213800'
app.config['MYSQL_DATABASE_PASSWORD'] = 'eKSg4sweix'
app.config['MYSQL_DATABASE_DB'] = 'sql11213800'
app.config['MYSQL_DATABASE_HOST'] = 'sql11.freemysqlhosting.net'
mysql.init_app(app)


@app.route('/')
def index():
    cur = mysql.get_db().cursor()
    sql = '''SELECT * FROM Gerichte'''
    cur.execute(sql)
    result = cur.fetchall()
    return render_template('index.html', content=result)

@app.route('/about')
def about():
    return render_template('about.html')

@app.route('/form')
def form():
    return render_template('form.html')

@app.route('/formValidate', methods=['GET', 'POST'])
def formValidate():
    if True:
        message = "valide"
    else:
        message = "fehler"
    return render_template('form.html', message=message)

if __name__ == '__main__':
    app.run(debug=True)
