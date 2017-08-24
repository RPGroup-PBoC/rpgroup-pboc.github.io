---
layout: post
title: People
image: assets/images/people_new.jpg
permalink: people/index.html
---

Unless otherwise noted, all emails are given as `@ name [at] caltech [dot] edu`.
<br />
## Current Members
{% for person in site.data.current_members %}
<div id="person-im">
<figure>

{% if person.link != none %}
<b> <a href="{{person.link}}">{{ person.name }}</a></b><br/>
{% else %}
<b> {{person.name}} </b>
{% endif %}
<img src="{{ site.baseurl }}/assets/images/people/{{ person.image }}.jpg"><br />
{{ person.title }}<br />
<figcaption>
{{ person.office }}<br />
{% if person.name == 'Rob Phillips' %}
<span style="font-size: 10pt;"> @ {{ person.email }} [at] pboc [dot] caltech [dot] edu </span><br />
{% endif %}
{% if person.name != 'Rob Phillips' %}
<span style="font-size: 10pt;"> @ {{ person.email }} </span><br />
{% endif %}
<span class="stretch"></span>
</figcaption>
</figure>
</div>
{% endfor %}
<br/>
<br/>

## Visitors and Friends
{% for person in site.data.friends %}
<div id="person-im" style="max-height: 70px">
<figure>
<b><a href="{{person.link}}">{{ person.name }}</a></b>
<img src="{{ site.baseurl }}/assets/images/people/{{ person.image }}.jpg">
<br/>
<!-- <a href="{{ person.link }}">{{ person.location }}</a> -->
</figure  >
</div>
{% endfor %}
<br />
<br />

## Former Members

{% for person in site.data.former_members %}
<div id="person-im" style="height: 70px;">
<figure>
<b> {{ person.name }} </b>
{% if person.image != none %}
<img src="{{site.baseurl }}/assets/images/people/{{ person.image }}.jpg">
<br />
{% endif %}
</figure>
</div>
{% endfor %}
