---
title: "{{ replace .Name "-" " " | title }}"

date: {{ .Date }}
url: /{{ .Name }}/

featured_image: /images/gallery/{{ .Name }}.jpg

categories: gaming
tags: ["web", "linux"]

featured: true
featured-sm: false

draft: false
---
