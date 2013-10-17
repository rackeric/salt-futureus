import os
import sys

sys.path.append('/srv/www/test.empulsegroup.com/application')

os.environ['PYTHON_EGG_CACHE'] = '/srv/www/test.empulsegroup.com/.python-egg'

def application(environ, start_response):
    status = '200 OK'
    output = 'Working salt deployment: Nginx + uWSGI + python app'

    response_headers = [('Content-type', 'text/plain'),
                    ('Content-Length', str(len(output)))]
    start_response(status, response_headers)

    return [output]
