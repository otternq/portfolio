import cgi
import datetime
import urllib
import webapp2
import jinja2
import os

from google.appengine.ext import db
from google.appengine.api import users

jinja_environment = jinja2.Environment(
    loader=jinja2.FileSystemLoader(os.path.dirname(__file__)))

class ProductImage:
    title = None
    url = None
    
    def __init__(self, title, url):
        self.title = title
        self.url = url


class ResumePage(webapp2.RequestHandler):
    
    def get(self):

        template_values = {
           'name': 'Nick Otter',
           'title': 'web developer',
           'languages': [
              'PHP', 'Python', 'Java'
           ]#,
           #'productImages': [
           #     ProductImage(title="PHP", url="http://www.php.net/images/logos/php-med-trans.png"),
           #     ProductImage(title="MongoDB", url="http://media.mongodb.org/logo-mongodb.png"),
           #     ProductImage(title="Amazon Web Services", url="http://saypeople.com/wp-content/uploads/2011/08/aws-logo.png"),
           #     ProductImage(title="CodeIgniter", url="http://codeigniter.com/images/design/ci_logo2.gif")
            #]
        }

        template = jinja_environment.get_template('./template/resume.html')
        self.response.out.write(template.render(template_values))


app = webapp2.WSGIApplication([('/resume/', ResumePage)],
                              debug=True)