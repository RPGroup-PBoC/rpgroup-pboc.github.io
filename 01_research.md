---
layout: post
title: Research
image: assets/images/research_new.jpg
permalink: research/index.html
---
{% for topic in site.data.research_members %}

<!-- Title is stored as the key, so index at 0 -->
<h2> {{ topic[0] }} </h2>

<!-- Other info is stored as the value, so index at 1 -->
{% assign var = topic[1] %}

<img style="display: block; margin: auto; max-width: 100%;" src="{{ site.baseurl }}/assets/images/{{ var.image }}">

{{ var.description }}
<br />

<!-- Add the people section -->
<div style="display: block;  text-align: center; margin: auto: max-width: 100%;">

{% for peep in var.people %}
<div style="display: inline-block; margin: auto; width: 95px;">
<img style="height: 100px; clip-path: circle(45px at center);
  -webkit-clip-path: circle(45px at center);" src="{{ site.baseurl }}/assets/images/people/{{ peep.photo }}.jpg"> <br />
{% if peep.link != None %}<a href="{{peep.link}}">{{ peep.name }}</a>{% else %} {{peep.name}} {% endif %}
</div>
{% endfor %}

</div>
<br />

{% endfor %}
