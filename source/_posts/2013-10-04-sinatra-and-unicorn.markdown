---
layout: post
title: "Sinatra and Unicorn"
date: 2013-10-04 12:11
comments: true
categories: 
---

Это заметка себе на память, о том, какие в итоге шаги привели к работоспособности схемы автоматического апдейта блога по коммиту в репозиторий.

Prerequisites: Sinatra and Unicorn installed.


1. Let Unicorn know there is a application. This will be done via 'config.ru' file.
	{% include_code lang:ruby sinatra.config.ru %}
2. Create minimalistic Sinatra application:
	{% include_code lang:ruby sinapp.rb %}
3. Restart Unicorn
4. Profit!
