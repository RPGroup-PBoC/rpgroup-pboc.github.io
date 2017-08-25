---
layout: post
title: Courses
image: assets/images/courses.png
permalink: courses/index.html
---

{% assign courses = site.data.courses %}
{% assign pub_serv = "http://rpdata.caltech.edu/courses/" %}
{% for loc in courses %}
## {{ loc[0] }}
{% for class in loc[1] %}
*{{ class[0] }}* {% for val in class[1] %} {% if val.link contains 'http' %} **\|** [{{val.year}}]({{val.link}}) {% elsif val.link == None %} **\|** {{val.year}} {% else %} **\|** [{{val.year}}]({{pub_serv}}{{val.link}}) {% endif %}{% endfor %}

{% endfor %}
{% endfor %}
