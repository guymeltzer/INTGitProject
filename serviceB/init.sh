#!/bin/bash

set -ex

# conflict
git checkout main

echo '''from flask import Flask, send_file, request

app = Flask(__name__)


@app.route("/")
def home():
    return "Welcome to my web server!"


@app.route("/status")
def home():
    return "OK"


@app.route("/blog")
def blog():
    return "Check out my latest blog post at example.com/blog."


@app.route("/pricing")
def pricing():
    return "Our pricing for web development starts at $50 per hour."


@app.route("/contact")
def contact():
    return "You can contact us at contact@example.com or info@example.com."


@app.route("/chat")
def contact():
    return "You can chat with live agent!"


if __name__ == "__main__":
    app.run(debug=True, port=8080, host="0.0.0.0")

''' > app.py

git add app.py && git -c user.name='You' -c user.email='you@company.com' commit -m "initial app.py"

git checkout -b feature/version1
echo '''from flask import Flask, send_file, request

app = Flask(__name__)


@app.route("/")
def home():
    return "Welcome to my web server!"


@app.route("/status")
def home():
    return "OK"


@app.route("/blog")
def blog():
    return "Check out my latest blog post at example.com/blog."


@app.route("/pricing")
def pricing():
    return "Our pricing for web development starts at $55 per hour."


@app.route("/contact")
def contact():
    return "You can contact us at contact@example.com or info@example.com."


@app.route("/chat")
def contact():
    return "You can chat with live agent!"


@app.route("/services")
def services():
    return "We offer the following services: web development, data analysis, SEO."


if __name__ == "__main__":
    app.run(debug=True, port=8081, host="0.0.0.0")

''' > app.py

git add app.py && git -c user.name='John Doe' -c user.email='john.doe@microsoft.com' commit -m "Restrict the extensions that can be disabled"

git checkout main
git checkout -b feature/version2
echo '''from flask import Flask, send_file, request

app = Flask(__name__)


@app.route("/")
def home():
    return "Welcome to my web server!"


@app.route("/status")
def home():
    return "OK"


@app.route("/blog")
def blog():
    return "Check out my latest blog post at example.com/blog."


@app.route("/pricing")
def pricing():
    return "Our pricing for web development starts at $70 per hour."


@app.route("/contact")
def contact():
    return "You can contact us at contact@example.com or info@example.com."


@app.route("/chat")
def contact():
    return "You can chat with live agent!"


@app.route("/internal")
def home():
    return "System management portal"


if __name__ == "__main__":
    app.run(debug=True, port=22, host="0.0.0.0")

''' > app.py

git add app.py && git -c user.name='Narayan Nadella' -c user.email='narayan.nadella@microsoft.com' commit -m "Nayaran's changes for app.py"


# vulnerable commit

BRANCHES=("bugfix/fix_readme_typo" "feature/upgrade_angular_version" "feature/data_retention_policy" "feature/elasticsearch_helm_chart" "bugfix/open_kibana_port")

for b in "${BRANCHES[@]}"
do
  git branch "$b"
done

B=${BRANCHES[ $RANDOM % ${#BRANCHES[@]} ]}
git checkout $B
echo some_file | md5sum | cut -d' ' -f1 > some_file
git add some_file && git commit -m "somefile"
echo some_other_file | md5sum | cut -d' ' -f1 > some_other_file
git add some_other_file && git commit -m "some_other_file"

git rev-parse --short HEAD > test/vul_hash-1

date > testa
echo "AWS_ACCESS_KEY_ID=AKIA2GMYABLLBID7DVUP" >> testa
echo "AWS_SECRET_ACCESS_KEY=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" >> testa

git add testa
git commit -m "test working with AWS"

T_HASH=$(git rev-parse --short HEAD | md5sum | cut -d' ' -f1)
echo $T_HASH > test/vul_hash

echo some_file2 | md5sum | cut -d' ' -f1 > some_file2
git add some_file2 && git commit -m "somefile2"
echo some_other_file2 | md5sum | cut -d' ' -f1 > some_other_file2

git add some_other_file2 && git commit -m "some_other_file2"

git checkout main

git add test/vul_hash-1 test/vul_hash
git commit -m "start here"

