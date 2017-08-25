---
layout: post
title: Publications
image: assets/images/publications.png
permalink: publications/index.html
---

<!-- Section just for books -- Don't touch this unless you're adding another one -->
## Books

<div style="height: 200px">

 <img src="{{ site.baseurl }}/assets/images/cbbtn.jpg" style="height: 200px;
 border: 1px solid #000000; float: left; text-align: top; margin-right: 10px ">
 <b>Cell Biology by the Numbers</b> by Ron Milo and Rob Phillips. <i>Garland Science</i>, 2015. | <a href="http://book.bionumbers.org">Book Website</a>
 <br />
 <br/>
</div>

<div style="height: 200px;">
<br/><br/> <img src="{{ site.baseurl }}/assets/images/pboc.jpg" style="height:
200px; border: 1px solid #000000; float: left;  margin-right: 10px ">
<b>Physical Biology of the Cell, Second Edition</b> by Rob Phillips, Jané
Kondev, Julie Theriot, Hernan Garcia, and illustrated by Nigel Orme. <i>Garland
Science</i>, 2012. | <a
href="http://www.garlandscience.com/product/isbn/9780815344506">Book
Website</a> | <a
href="http://www.rpgroup.caltech.edu/publications/PBoC2_Erratum.pdf">Erratum</a>
</div>

<br/>
<div style="height: 200px;">
<br /> <br/>
<img src="{{ site.baseurl }}/assets/images/crystals.jpg" style="height: 200px;  padding-right: 10px; float: left; text-align: top; margin-right: 10 px;">
<b><span> </span>  Crystals, Defects and Microstructures: Modeling Across Scales </b> by Rob Phillips. <i> Cambridge University Press</i>, 2001. | <a href="http://www.cambridge.org/catalogue/catalogue.asp?isbn=9780521793575"> Book Website</a>
</div>
<br />
<br />
<br />
<br />

<!-- Section for publications. Don't add them here directly. Add new publications to /data/pubs.yaml. The following code reads directly from that file. -->
## Publications

{% assign pub_serv = "http://rpdata.caltech.edu/publications/" %}
{% for year in site.data.pubs %}
<span style="display: block; width: 100%; text-align: center; font-size: 18pt; font-weight: 600;">{{ year[0] }}</span>
{% for paper in year %}
{% for p in paper %}
{% assign links = p.links %}

**{{ p.title }}** by {{ p.author }} <i>{{ p.journal }}</i>
  {{ p.volume  }} {{ p.number }} {{ year[0] }}. {% for val in links %} \|{% if val[0] == 'DOI' %} DOI: {{ val[1] }}. {% elsif val[1] contains 'http' %} [{{ val[0] }}]({{ val[1] }})  {% else %} [{{ val[0] }}]({{pub_serv}}{{ val[1] }}) {% endif %} {% endfor %}{% endfor %}
{% endfor %}
{% endfor %}


## Notes and Corrections
* In "**Cooperative Gating and Spatial Organization of Membrane Proteins through Elastic Interactions**" by Tristan S. Ursell, Kerwyn Casey Huang, Eric L. Peterson, and Rob Phillips (PLoS Comp. Bio. 2007), the numerator of equation 14 should be
z(0,1) + z(1,1).
Please see the [arXiv version](http://arxiv.org/PS_cache/q-bio/pdf/0702/0702031v1.pdf)


* in "**Forces during Bacteriophage DNA Packaging and Ejection**" by Prashant K. Purohit, Mandar M. Inamdar, Paul D. Grayson, Todd M. Squires, Jané Kondev, and Rob Phillips (Biophys J. 2005), the units of the legend in figure 2.8 should be k<sub>B</sub>T / nm<sup>2</sup>.
