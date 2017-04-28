---
layout: post
title: Courses
image: assets/images/courses.png
permalink: courses
---


{% assign courses = site.data.courses %}
{% for loc in courses %}
## {{ loc[0] }}
{% for class in loc[1] %}
*{{ class[0] }}* {% for val in class[1] %}
{% if val.year contains 'http' %}
{% assign link = val.link}
{% else %}
{% assign link = '{{ site.baseurl }}/courses/' %}
{% endif %} {% if val.link == None %} **\|** {{ val.year }} {% else %} **\|** [{{ val.year }}]({{ link }}) {% endif %}{% endfor %}
{% endfor %}
{% endfor %}
