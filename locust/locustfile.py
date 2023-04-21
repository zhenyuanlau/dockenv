from locust import HttpUser, task


class DemoUser(HttpUser):

    @task
    def visit(self):
        self.client.get('/')
