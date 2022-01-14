from flask import Flask

app = Flask(__name__)

@app.route("/")
def hello_world()
    return "<p>Udacity Capstone project version: 0.0.1</p>"

if __name__ == "__main__":
    # load pretrained model as clf
    app.run(host='0.0.0.0', port=80, debug=True) # specify port=80
