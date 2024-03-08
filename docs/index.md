# Welcome to The Definition of Done

This document gives advice and factors to consider when developing, deploying, and maintaining software. It is a comprehensive (and slightly idealized) guide covering [planning and design](#planning-and-design), [early development and prototyping](#early-development-and-prototyping), [integration and testing](#integration-and-testing), [release and deployment](#release-and-deployment), [productionization](#productionization), [continuous enhancement](#continuous-enhancement), [marketing and communication](#marketing-and-communication), and [iterative process improvement](#beyond-done-iterative-process-improvement).

Not every step outlined is necessary for every project; there are always trade-offs between under-planning and over-engineering. Use your best judgement and omit steps when appropriate, or adopt steps incrementally as your project matures.

## Step-by-Step Guide

Click on any step below to read more detailed descriptions.

{% for section in site.data.sections %}
{% include section.html title=section.title blurb=section.blurb details=section.details %}
{% endfor %}
