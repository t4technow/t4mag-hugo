---
title: "{{ replace .Name "-" " " | title }}"

date: {{ .Date }}
url: /{{ .Name }}/

featured_image: /images/gallery/{{ .Name }}.jpg

category: linux
tags: ["web", "linux"]

featured: false
featured-sm: false

draft: false
---
