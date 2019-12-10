from django.http import HttpRequest
from django.test import SimpleTestCase
from django.urls import reverse

class ApiResponseTests(SimpleTestCase):

    def test_get_api_response_teams(self):
        response = self.client.get('/mlb/')
        self.assertEquals(response.status_code, 200)