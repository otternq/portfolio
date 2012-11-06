import webapp2
import jinja2
import os

jinja_environment = jinja2.Environment(
    loader=jinja2.FileSystemLoader(os.path.dirname(__file__)))

class ServicesPage(webapp2.RequestHandler):
    
    def get(self):
        template = jinja_environment.get_template('./template/services/index.html')
        self.response.out.write(template.render())
        
class ServiceHostingPage(webapp2.RequestHandler):
    
    def get(self):  
        template = jinja_environment.get_template('./template/services/hosting.html')
        self.response.out.write(template.render())
        
    def post(self):
        
        hosting_responses = {
           'customer': self.request.get("name"),
           'email': self.request.get("email"),
           'description': self.request.get("description")
        }
        
        template = jinja_environment.get_template('./template/services/hostingHandle.html')
        self.response.out.write(template.render(hosting_responses))

app = webapp2.WSGIApplication(
    [
     ('/services/?', ServiceHostingPage),
     ('/services/hosting/?', ServiceHostingPage)
    ],
                              debug=True)