---
layout: post
title: "Sinatra and Unicorn"
date: 2013-10-04 12:11
comments: true
categories: 
---

Это заметка себе на память, о том, какие в итоге шаги привели к работоспособности схемы автоматического апдейта блога по коммиту в репозиторий.

Prerequisites:
- sinatra and unicorn installed

1. Added 'config.ru' file, where we load our Sinatra file, and run the app by 'run App.new'

``` ruby
require 'sinapp'

run App.new
```

2. Added 'sinapp' file with:

``` ruby


require 'rubygems'
require 'sinatra'
require 'haml'
 
class App < Sinatra::Application
	post '/bazinga' do
		# This line will be in logs
  		puts "lalala #{params.inspect}"
  		# And this is going to be response sent to client
  		"I got some: #{params.inspect}"
	end
end


```

3. Restarted Unicorn

Should work!
