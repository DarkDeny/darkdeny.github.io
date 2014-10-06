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

    ``` ruby
    require 'sinapp'

    run App.new
    ```

2. Create minimalistic Sinatra application:

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

3. Restart Unicorn
4. Profit!
