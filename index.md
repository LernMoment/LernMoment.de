---
layout: main-page
title: 
excerpt: "Beherrsche Softwareentwicklung indem du täglich kurze Lerneinheiten für C# (.NET / Mono) und C absolvierst."
search_omit: true
image:
  feature: intro-mac.jpg
---

<div class="post-subscribe">
  <p>Mache es dir noch heute zur Gewohnheit jeden Tag deine Softwareentwicklung zu verbessern</p>
    <form action="http://lernmoment.us9.list-manage2.com/subscribe/post" method="POST" target="_blank">
      <input type="hidden" name="u" value="d0206d57f5002e40b651a0f60">
      <input type="hidden" name="id" value="8845c28e62">
      <input type="email" autocapitalize="off" autocorrect="off" name="MERGE0" id="MERGE0" size="25" value="">
      <input type="text" name="MERGE1" id="MERGE1" size="25" value="">
      <input type="submit" class="button" name="submit" value="Subscribe to list">
    </form>
</div>

#### Die aktuellsten LernMomente

<ul class="post-list">
{% for post in site.posts limit:10 %} 
  <li><article><a href="{{ site.url }}{{ post.url }}">{{ post.title }} </span><span class="entry-date">{{ post.lernmoment }} &nbsp;&bull;&nbsp; {% for tag in post.tags %}{{ tag }}{% unless forloop.last %}, {% endunless %}{% endfor %}</span>{% if post.excerpt %} <span class="excerpt">{{ post.excerpt }}</span>{% endif %}</a></article></li>
{% endfor %}
</ul>
