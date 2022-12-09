---
title: "{{ replace .Name "-" " " | title }}"

date: {{ .Date }}
url: /{{ .Name }}/

featured_image: /images/gallery/{{ .Name }}.jpg

category: downloads
tags:
    - crack
    - android
    - windows

draft: false
featured: false
featured-sm: false
---

{{< img 
    src="/images/gallery/post-xl_1.jpg" 
    title="Sample Image" 
    caption="Image with title, caption, alt, ..." alt="image alt" 
    class="post-img"  
    width="960px"
>}}