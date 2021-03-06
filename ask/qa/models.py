from django.db import models

# Create your models here.
from django.contrib.auth.models import User

class Question(models.Model):
	title = models.CharField(max_length = 255)
	text = models.TextField()
	added_at = models.DateTimeField(auto_now = True)
	rating = models.IntegerField(default = 0)
	author = models.ForeignKey(User)
	likes = models.ManyToManyField(User)
	
class Answer(models.Model):
	text = models.TextField()
	added_at = models.DateTimeField(auto_now = True)
	question = models.ForeignKey(Question)
	author = models.ForeignKey(User)
