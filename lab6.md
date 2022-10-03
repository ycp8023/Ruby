# rails中gem包的功能
>20373630-恽础萍-lab6
* activejob
* ctivemodel
* activerecord
* activesupport
* actionmailer
* actionpack
* actionview
* actioncable
* activestorage

### activejob
摘自rails的github仓库

> Active Job is a framework for declaring jobs and making them run on a variety of queuing backends. These jobs can be everything from regularly scheduled clean-ups, to billing charges, to mailings — anything that can be chopped up into small units of work and run in parallel.
>
> It also serves as the backend for Action Mailer's #deliver_later functionality that makes it easy to turn any mailing into a job for running later. That's one of the most common jobs in a modern web application: sending emails outside the request-response cycle, so the user doesn't have to wait on it.

activejob是一个用于声明任务并且使他们在大量后端上运行的框架。这些任务可以是任何事情，从定期安排的清理，到计费，到邮寄——任何可以被分割成小的工作单元且并行运行的工作。它还充当Actionmailer的后端，这个功能可以很容易地将任何邮件转换为稍后运行的工作。这是现代web应用中最常见的工作之一：在请求——相应周期之外发送电子邮件，因而用户不必等待。

### activemodel

这个组件用于提供一个定义好的接口，用于建立ORM（activerecord）与actionpack之间的关系映射，也就是MVC的M部分，它支持：attributes, callbacks, validations, observers, serialization, internationalization, and testing等。也就是说它把Rails2中的activerecord各项功能抽象出来做成了接口，如果有需要，你只要实现这些接口就可以建立自己的ORM来取代activerecord。

### activerecord

Rails的数据库操作组件，建立一个持久的领域模型用于数据库表和ruby类之间的映射。它用于提供基本的CRUD功能，强大的查找功能，和模型之间的关联，数据校验、迁移和测试等。

### activesupport

是从rails提取出来的一个支持工具包库和Ruby的核心扩展。支持多字节字串，国际化，时区和测试。

### actionmailer

Rails的email组件，可以以控制器/视图的方式来撰写、发送、接收和测试电子邮件，支持群发和附件

### actionpack

Rails的Web应用组件，包含三部分：Action Controller, Action View 和 Action Dispatch。是整个MVC的VC部分，可以使用在Rack兼容的服务器上。

### actionview

摘自rails的github仓库

> Action View is a framework for handling view template lookup and rendering, and provides view helpers that assist when building HTML forms, Atom feeds and more. Template formats that Action View handles are ERB (embedded Ruby, typically used to inline short Ruby snippets inside HTML), and XML Builder.

actionview是一个处理视图模板查找和呈现的框架，并提供视图工具，以在创建html表单，Atom提要等时提供帮助。actionview处理的模板格式是ERB（嵌入式Ruby，通常用于在html中内联简短的Ruby代码片段）和XML Builder

### actioncable

摘自rails的github仓库

> Action Cable seamlessly integrates WebSockets with the rest of your Rails application. It allows for real-time features to be written in Ruby in the same style and form as the rest of your Rails application, while still being performant and scalable. It's a full-stack offering that provides both a client-side JavaScript framework and a server-side Ruby framework. You have access to your full domain model written with Active Record or your ORM of choice.

Action Cable将WebSockets与Rails应用程序的其余部分无缝集成。它允许实时特性被以和Rails应用程序的其他部分同样的风格和格式写入Ruby，同时仍然有很好的性能和可伸缩性（？它是一个全栈的工具，同时提供了客户端JavaScript框架和服务器端Ruby框架。你可以通过活动记录和ORM，完成主要模型。

### activestorage

摘自rails的github仓库

> Active Storage makes it simple to upload and reference files in cloud services like [Amazon S3](https://aws.amazon.com/s3/), [Google Cloud Storage](https://cloud.google.com/storage/docs/), or [Microsoft Azure Storage](https://azure.microsoft.com/en-us/services/storage/), and attach those files to Active Records. Supports having one main service and mirrors in other services for redundancy. It also provides a disk service for testing or local deployments, but the focus is on cloud storage.
>
> Files can be uploaded from the server to the cloud or directly from the client to the cloud.
>
> Image files can furthermore be transformed using on-demand variants for quality, aspect ratio, size, or any other [MiniMagick](https://github.com/minimagick/minimagick) or [Vips](https://www.rubydoc.info/gems/ruby-vips/Vips/Image) supported transformation.

活动存储使上传和引用云服务(如Amazon S3、谷歌云存储或Microsoft Azure存储)中的文件变得简单，并将这些文件附加到活动记录。这种支持有一个主服务和其他服务的镜像。他还提供了用于测试或本地部署的磁盘服务，但重点是云存储。文件可以从服务器上传到云端，也可以直接从客户端上传到云端。图像文件还可以根据需要转换质量、纵横比、大小或任何其他MiniMagick或Vips支持的转换
