---
layout: post
title:  "Distributed Search Engine Part 1"
date:   2020-11-08 19:00:00 +0530
categories: other
author: "Jinay Shah"
---

This project is meant to be my deep dive into distributed systems and their management. One of the reasons for doing this is for the market value, most of my target companies use micro-services based approach. Another reason is that I genuinely want to build something big using modern technologies.

Here are some rough requirements for what I need from my search engine:

- Distributed and Scalable - I want this deployed on a bunch of auto-scaling servers somewhere. Since the requirements are too big for a single system, I need it to be composed of micro-services serving small functions. My goal is to index at least a 1 million pages a month, just throwing this number out there.
- PageRank - Crawling the web and storing it is cool but building a system capable of doing PageRank at scale is even better. Doing it on a simple small set of pages is okay but I want to execute PageRank on millions of pages.
- Use ML somewhere inside of the system - Crawling at this scale will produce a ton of data which can be further leveraged for training some ML models. I think there’s scope to use the data for semantic search results and ranking.
- Use Kubernetes - Since the project has a lot of scalable micro-services, it’s a perfect use case for Kubernetes. Also, Kubernetes is hot in the industry and I was looking for an excuse to use it. 
- ElasticSearch - I think I’ll let ElasticSearch do all the indexing and multi-node scaling rather than trying to re-invent the wheel. Elastic supports BERT like vectors for semantic search, so it’ll be interesting to use. 
- Some form of monitoring and logging - This is critical in any system, so I want to use Prometheus and Grafana to implement it. 
- Fast and efficient - Python is easy but too slow. C++ is too low level. Java is okay and balanced, but I don’t want to use Java. Golang is fast, efficient, clean and built for applications like this. We can always re-implement a micro-service in a different language down the lane, without affecting other systems. 
- Find an excuse to use Apache Kafka - I see it used as duct tape everywhere in big systems. The market value is high, and I want to see how it can help make my project better. 
- Find another excuse to use some in-memory stores like Redis - The market value is high just like Kafka, I'm sure it'll be useful somewhere in the system.
- Autocomplete - It’s easy to build that on a static list of pages but sounds pretty hard on a dynamic set of pages. 
- Use TerraForm or CloudFormation in the project, after everything is done and set up. I want to make it easy for someone else to deploy this project later on.
- Add user tracking and ranking using that data - I don’t think the implementing the frontend for this will be easy.

That’s a long list of requirements, and I imagined it would take reading a book or two to solve each problem. The TLDR of all this is ”a distributed search engine using Go”.  For a while, I assumed I’ll have to read a ton of books to get the knowledge required to pull off the whole project. These are not easy things to do. 

Fortunately, I ran across a book called ”Hands-on Software Engineering with Golang” which does exactly what I want. The book assumes an intermediate knowledge level of Go and starts building a big project in each chapter. The big project just so happens to be a distributed search engine, deployed on Kubernetes. Yes, the book doesn’t have everything I want but it checks off a lot of boxes for my project requirement. I won’t just build the project they have and call it my own, I plan on adding my own features since their scope is pretty limited. 

I’m just happy to skip reading a ton of books and get all the knowledge I want from one book itself. Yes, I won’t have the same level of knowledge as reading a dozen books but I’m short on time. I want to have this project ready before I start interviewing for FAANG.
