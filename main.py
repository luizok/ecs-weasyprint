from weasyprint import HTML
from flask import Flask, send_file


app = Flask(__name__)

@app.route('/')
def hello_world(username, password):
    dest_file = '/tmp/weasyprint-website.pdf'

    HTML('https://weasyprint.org/').write_pdf(dest_file)
    return send_file(dest_file, mimetype='application/pdf')


if __name__ == '__main__':

    app.run(host='0.0.0.0', port=8080, debug=True)