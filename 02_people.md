---
layout: post
title: People
image: assets/images/people_new.jpg
permalink: people/index.html
---
## Current Members

{% for person in site.data.current_members %}
<div id="person-im">
<figure>
<b> {{ person.name }}</b><br/>

<img src="{{ site.baseurl }}/assets/images/people/{{ person.image }}.jpg"><br />
{{ person.title }}<br />
<figcaption>
{{ person.office }}<br />
{% if person.name == 'Rob Phillips' %}
<span style="font-family: courier; font-size: 10pt;"> @ {{ person.email }} [at] pboc [dot] caltech [dot] edu </span><br />
{% endif %}
{% if person.name != 'Rob Phillips' %}
<span style="font-family: Courier; font-size: 10pt;"> @ {{ person.email }} </span><br />
{% endif %}
<span class="stretch"></span>
</figcaption>
</figure>
</div>
{% endfor %}

## Visitors and Friends

{% for person in site.data.friends %}
<div id="person-im" style="max-height: 150px">
<figure>
<b>{{ person.name }}</b><br/>
<img src="{{ site.baseurl }}/assets/images/people/{{ person.image }}.jpg">
<br/>
<a href="{{ person.link }}">{{ person.location }}</a>
</figure  >
</div>
{% endfor %}
<br />
## Past Members

{% for person in site.data.former_members %}
<div id="person-im" style="height: 150px;">
<figure>
<b> {{ person.name }} </b><br />
{% if person.image != none %}
<img src="{{site.baseurl }}/assets/images/people/{{ person.image }}.jpg">
<br />
{% endif %}
{{ person.title }}<br />
</figure>
</div>
{% endfor %}
