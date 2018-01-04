from flask import Flask, redirect, render_template, url_for, request
from flaskext.mysql import MySQL

app = Flask(__name__)

mysql = MySQL()
app.config['MYSQL_DATABASE_USER'] = '<username>'
app.config['MYSQL_DATABASE_PASSWORD'] = '<password>'
app.config['MYSQL_DATABASE_DB'] = '<db-name>'
app.config['MYSQL_DATABASE_HOST'] = '<hostname>'
mysql.init_app(app)


@app.route('/')
def index():
    connection = mysql.get_db()
    cursor = connection.cursor()
    query = "SELECT * FROM Gerichte"
    cursor.execute(query)
    result = cursor.fetchall()
    return render_template('index.html', content=result)

@app.route('/about')
def about():
    return render_template('about.html')

@app.route('/form')
def form():
    message = request.args.get('message')
    return render_template('form.html', message=message)

@app.route('/formValidate', methods=['GET', 'POST'])
def formValidate():
    message = ""
    if request.method == 'POST':
        name = request.form.get('name')
        descr = request.form.get('beschreibung')
        price = request.form.get('preis')

        if not name or not descr or not price:
            message = "Es wurden nicht alle Felder ausgefüllt"
        else:
            message = "Eintragung vorgenommen"
            connection = mysql.get_db()
            cursor = connection.cursor()
            query = "INSERT INTO Gerichte (Name, Beschreibung, Preis) VALUES ('{}','{}','{}')".format(name, descr, price)
            cursor.execute(query)
            connection.commit()

    return redirect(url_for('form', message=message))

if __name__ == '__main__':
    app.run(debug=True)
