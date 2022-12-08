---
title: "{{ replace .Name "-" " " | title }}"

date: {{ .Date }}
url: /{{ .Name }}/

featured_image: /images/gallery/{{ .Name }}.jpg

category: gaming
tags: ["web", "linux"]

featured: true
featured-sm: false

draft: false
---
