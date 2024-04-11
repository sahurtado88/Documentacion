kanban, agile, scrum  https://www.toptal.com/project-managers/agile/project-management-blueprint-part-1-agile-scrum-kanban-lean

DEVOPS

What is DevOps?

DevOps is a work culture primarily centered around collaboration, communication, and integration among the development teams. It was introduced to address the disconnect primarily between the development, operations, and quality assurance teams. As a result, it’s becoming crucial for businesses to adopt DevOps practices, not only for seamless software development and operations but also for the high quality of deployment for successful product delivery. 

The goal are fast tiem to market, few production failures, immediate recovery from failures

In a devops cultur devs care about stability as well as speed and ops care about speed as well as stability

Let’s briefly overview how the DevOps lifecycle works at every stage.

    Plan: In this stage, teams identify the business requirement and collect end-user feedback. They create a project roadmap to maximize the business value and deliver the desired product during this stage.
    
    Code: The code development takes place at this stage. The development teams use some tools and plugins like Git to streamline the development process, which helps them avoid security flaws and lousy coding practices.
    
    Build: In this stage, once developers finish their task, they commit the code to the shared code repository using build tools like Maven and Gradle.
    
    Test: Once the build is ready, it is deployed to the test environment first to perform several types of testing like user acceptance test, security test, integration testing, performance testing, etc., using tools like JUnit, Selenium, etc., to ensure software quality.
    
    Release: The build is ready to deploy on the production environment at this phase. Once the build passes all tests, the operations team schedules the releases or deploys multiple releases to production, depending on the organizational needs.
    
    Deploy: In this stage, Infrastructure-as-Code helps build the production environment and then releases the build with the help of different tools.
    
    Operate: The release is live now to use by customers. The operations team at this stage takes care of server configuring and provisioning using tools like Chef.
    
    Monitor: In this stage, the DevOps pipeline is monitored based on data collected from customer behavior, application performance, etc. Monitoring the entire environment helps teams find the bottlenecks impacting the development and operations teams’ productivity.


----------------

Here is an ultimate guide to explain the 7Cs of the DevOps lifecycle.
1. Continuous development

This phase plays a pivotal role in delineating the vision for the entire software development cycle. It primarily focuses on project planning and coding. During this phase, project requirements are gathered and discussed with stakeholders. Moreover, the product backlog is also maintained based on customer feedback which is broken down into smaller releases and milestones for continuous software development. 

Once the team agrees upon the business needs, the development team starts coding for the desired requirements. It’s a continuous process where developers are required to code whenever any changes occur in the project requirement or in case of any performance issues.

Nordstrom, for instance, embraced DevOps to minimize the time consumed in developing, testing, and releasing the updates. Nordstrom is an American luxury department store chain in the U.S. and Canada. The company was following the waterfall model while rewriting its consumer-facing in-store application and thus faced issues and several negative feedbacks from customers when the app launched. So, the company decided to break down the silos. 

As a result, they migrated to continuous planning and development with a single backlog of work that helped the organization enhance its app’s build quality and throughput. Not only that, but the company also succeeded in reducing the bugs and increased the number of product releases, from twice a year to monthly.

Tools Used: There are no specific tools for planning, but the development team requires some tools for code maintenance. GitLab, GIT, TFS, SVN, Mercurial, Jira, BitBucket, Confluence, and Subversion are a few tools used for version control. Many companies prefer agile practices for collaboration and use Scrum, Lean, and Kanban. Among all those tools, GIT and Jira are the most popular ones used for complex projects and the outstanding collaboration between teams while developing.

2. Continuous integration

Continuous integration is the most crucial phase in the entire DevOps lifecycle. In this phase, updated code or add-on functionalities and features are developed and integrated into existing code. Furthermore, bugs are detected and identified in the code during this phase at every step through unit testing, and then the source code is modified accordingly. This step makes integration a continuous approach where code is tested at every commit. Moreover, the tests needed are also planned in this phase. 

Let’s take the example of Docusign, which developed e-signature technology back in 2003. It helps its clients automate the process of preparing, signing, and managing agreements. Their development teams used to follow Agile methodology for years to collect customer feedback and make small and quick releases. But, they lacked collaboration between the development and operations team, which led them to many failures.

Moreover, their business was solely based on the transaction of signatures and approvals. So, the biggest challenge for their business was continuous integration and delivery. A single mistake could cause a serious problem and ruin the entire operation process. Hence, the organization decided to move to DevOps. DocuSign implemented a tool – mock for their internal API to speed up the product development and delivery. This tool helped the organization in integrating critical functionalities such as incident management. This tool also makes the testing with simulation simple. 

Tools Used: Jenkin, Bamboo, GitLab CI, Buddy, TeamCity, Travis, and CircleCI are a few DevOps tools used to make the project workflow smooth and more productive. For example, Jenkin (open-source tool) is used widely to automate builds and tests. CircleCI and Buddy, on the other hand, are commercial tools. Well, whatever tools you select for continuous integration, pick the one that can fit your business and project requirements.

3. Continuous testing

Some teams carry out the continuous testing phase before the integration occurs, while others do it after the integration. Quality analysts continuously test the software for bugs and issues during this stage using Docker containers. In case of a bug or an error, the code is sent back to the integration phase for modification. Automation testing also reduces the time and effort to deliver quality results. Teams use tools like Selenium at this stage. Moreover, continuous testing enhances the test evaluation report and minimizes the provisioning and maintenance cost of the test environments.

Tools Used: JUnit, Selenium, TestNG, and TestSigma are a few DevOps tools for continuous testing. Selenium is the most popular open-source automation testing tool that supports multiple platforms and browsers. TestSigma, on the other hand, is a unified AI-driven test automation platform that eliminates the technical complexity of test automation through artificial intelligence. 

4. Continuous deployment

This phase is the crucial and most active one in the DevOps lifecycle, where final code is deployed on production servers. The continuous deployment includes configuration management to make the deployment of code on servers accurate and smooth. Development teams release the code to servers and schedule the updates for servers, keeping the configurations consistent throughout the production process. Containerization tools also help in the deployment process by providing consistency across development, testing, production, and staging environments. This practice made the continuous delivery of new features in production possible.

For example, Adobe embraced the DevOps culture to release small software updates continuously. It manages and automates its deployments using CloudMunch’s end-to-end DevOps platform. This DevOps platform lets Adobe’s developers see how one Adobe product’s changes can affect others. And thus, it helped the company in the quick delivery of software with better product management.

Tools Used: Ansible, Puppet, and Chef are the configuration management tools that make the deployment process smooth and consistent throughout the production process. Docker and  Vagrant are another DevOps tool used widely for handling the scalability of the continuous deployment process. Apart from this, Spinnaker is an open-source continuous delivery platform for releasing the software changes, while ArgoCD is another open-source tool for Kubernetes native CI/CD.

5. Continuous feedback

Continuous feedback came into existence to analyze and improve the application code. During this phase, customer behavior is evaluated regularly on each release to improve future releases and deployments. Businesses can either opt for a structural or unstructured approach to gather feedback. In the structural approach, feedback is collected through surveys and questionnaires. In contrast, the feedback is received through social media platforms in an unstructured approach. Overall, this phase is quintessential in making continuous delivery possible to introduce a better version of the application. 

One of the best examples of continuous feedback is Tangerine bank. It’s a Canadian bank that embraced continuous feedback to enhance its customers’ mobile experience. After opting for continuous feedback, this Canadian bank collected a considerable amount of valuable feedback within a few weeks, which helped the bank reach the cause of the problem quickly. Furthermore, this has helped them improve the application as per their customers’ needs. This is how Tangerine bank managed to repurpose the resources and money on other crucial things excellently after adopting DevOps.

Tools Used: Pendo is a product analytics tool used to collect customer reviews and insights. Qentelli’s TED is another tool used primarily for tracking the entire DevOps process to gather actionable insights for bugs and flaws.

6. Continuous monitoring

During this phase, the application’s functionality and features are monitored continuously to detect system errors such as low memory, non-reachable server, etc. This process helps the IT team quickly identify issues related to app performance and the root cause behind it. If IT teams find any critical issue, the application goes through the entire DevOps cycle again to find the solution. However, the security issues can be detected and resolved automatically during this phase.  

Tools Used: Nagios, Kibana, Splunk, PagerDuty, ELK Stack, New Relic, and Sensu are a few DevOps tools used to make the continuous monitoring process fast and straightforward.

7. Continuous operations

The last phase in the DevOps lifecycle is crucial for reducing the planned downtime, such as scheduled maintenance. Generally, developers are required to take the server offline to make the updates, which increases the downtime and might even cost a significant loss to the company. Eventually, continuous operation automates the process of launching the app and its updates. It uses container management systems like Kubernetes and Docker to eliminate downtime. These container management tools help simplify the process of building, testing, and deploying the application on multiple environments. The key objective of this phase is to boost the application’s uptime to ensure uninterrupted services. Through continuous operations, developers save time that can be used to accelerate the application’s time-to-market. 

Tools Used: Kubernetes and Docker Swarm are the container orchestration tools used for the high availability of the application and to make the deployment faster.


Idempotency is the property that ensures that the results from an operation are the same, even if the same function is applied multiple times beyond the initial application. 

## Continuos Integration, COntinuos deployment, Continuos DElivery CI/CD




- What is continuous integration?

Continuous integration (CI) is the process of automating and integrating code changes and updates from many team members during software development. In CI, automated tools confirm that software code is valid and error-free before it's integrated, which helps detect bugs and speed up new releases.

Successful CI  (continuos integration) means new code changes to an app are regularly built, tested, and merged to a shared repository. It’s a solution to the problem of having too many branches of an app in development at once that might conflict with each other.

CI: Practice of frequently merging code changes done by developers

- What is continuous delivery?

Continuous delivery (CD) is the ability to push new software into production multiple times per day, automating the delivery of applications to infrastructure environments. CD is part of DevOps, which helps shorten the software development lifecycle.

CD: the prectice of continuously maintening code in a deployable state

- What is continuos deployment?

The practice of frequently deploying small code changes to production

Continuos delivery is keeping the code in a deployable state Continuos deployment is actually doing the deployment frequently

Continuous Delivery is a software engineering practice where the code changes are prepared to be released. Continuous Deployment aims at continuously releasing the code changes into the production environment.

## DISTRIBUTED SYSTEM ##

A distributed system is a computing environment in which various components are spread across multiple computers (or other computing devices) on a network. These devices split up the work, coordinating their efforts to complete the job more efficiently than if a single device had been responsible for the task.




## STATLESS Vs STATEFULL ##

However, the major feature of stateful is that it maintains the state of all its sessions, be it an authentication session, or a client’s request for information. Stateful are those that may be used repeatedly, such as online banking or email. They’re carried out in the context of prior transactions in which the states are stored, and what happened in previous transactions may have an impact on the current transaction. Because of this, stateful apps use the same servers every time they perform a user request. An example of stateful is FTP (File Transfer Protocol). For the course of an FTP session, which often includes many data transfers, the client establishes a Control Connection. After this, the data transfer takes place.

Advantages of Stateful

    Stateful protocol keeps track of the connection information, and as a result, delivers superior performance because of continually keeping track of information.
    Stateful protocols are more intuitive because they can maintain data on the server between two requests.
    They can improve performance when data retrieval is required only once.

Disadvantages of Stateful

    Stateful protocol requires memory allocation in order to store data.
    In the event of inefficient maintenance of session storage, there can be a decrease in the performance. It requires continuous management of the service’s full lifecycle.
    These protocols are highly dependent on the server-side state.
    Usually, stateful protocols require backing storage.
    Since the state is maintained, stateful is not very secure.

What is Stateless?

In order to comprehend what Stateless means, let us consider a scenario just like we did in the case of Stateful. Consider the event of sending an SMS. Here, the receiver’s availability is not confirmed, and the sender just sends the SMS to the recipient. There is no confirmation from the receiving device to the sending device that the message has been received. Despite being transmitted, the communication may or may not be received. There can be no cross-verification of status or retries. This is what stateless is all about.

A stateless protocol is one in which the receiver is not required to keep session state from previous requests. The sender sends relevant session state to the receiver in such a way that each request may be interpreted without reference to prior requests’ session state, which the receiver retains. HTTP (HyperText Transfer Protocol) is an example of Stateless Protocol because each request is executed independently of the requests that came before it. This implies that once a transaction is completed, the connection between the browser and the server is also terminated.

Advantages of Stateless

    Since the monitoring system does not have to look beyond a single request to determine its whole nature, visibility of the protocol is improved. 
    It is easier to recover from partial failures like crashes since no state is maintained, which improves reliability. 
    The server does not have to store session state between requests, hence, scalability  is enhanced as deploying the services to any number of servers is possible, and implementation is simplified even more.
    It only necessitates a small number of resources because the system doesn’t need to keep track of communication over numerous lines, as well as session information.
    In Stateless Protocols, each individual communication is unconnected and distinct from the ones that come before or after it.
    Here, each packet of data travels on its own. There is no need to refer to another packet in these packets.

Disadvantages of Stateless

    It may be essential to include additional information in each request, and as a result, the server will need to interpret this new information.
    They may degrade network performance by increasing the amount of repetitive data delivered in a series of requests, which cannot be saved and reused.
    They are inherently less capable as they do not store information about a particular user session.

The most significant distinction between stateful and stateless is that stateless do not “save” data, whereas stateful applications do

## GIT DEPLOYMENT

### GIT FLOW
In the Git flow development model, you have one main development branch with strict access to it. It’s often called the develop branch.

Developers create feature branches from this main branch and work on them. Once they are done, they create pull requests. In pull requests, other developers comment on changes and may have discussions, often quite lengthy ones

Git Flow Pros and Cons

As you can see, doing pull requests might not always be the best choice. They should be used where appropriate only.

When Does Git Flow Work Best?

    When you run an open-source project.
    This style comes from the open-source world and it works best there. Since everyone can contribute, you want to have very strict access to all the changes. You want to be able to check every single line of code, because frankly you can’t trust people contributing. Usually, those are not commercial projects, so development speed is not a concern.

    When you have a lot of junior developers.
    If you work mostly with junior developers, then you want to have a way to check their work closely. You can give them multiple hints on how to do things more efficiently and help them improve their skills faster. People who accept pull requests have strict control over recurring changes so they can prevent deteriorating code quality.

    When you have an established product.
    This style also seems to play well when you already have a successful product. In such cases, the focus is usually on application performance and load capabilities. That kind of optimization requires very precise changes. Usually, time is not a constraint, so this style works well here. What’s more, large enterprises are a great fit for this style. They need to control every change closely, since they don’t want to break their multi-million dollar investment.

When Can Git Flow Cause Problems?

    When you are just starting up.
    If you are just starting up, then Git flow is not for you. Chances are you want to create a minimal viable product quickly. Doing pull requests creates a huge bottleneck that slows the whole team down dramatically. You simply can’t afford it. The problem with Git flow is the fact that pull requests can take a lot of time. It’s just not possible to provide rapid development that way.

    When you need to iterate quickly.
    Once you reach the first version of your product, you will most likely need to pivot it few times to meet your customers’ need. Again, multiple branches and pull requests reduce development speed dramatically and are not advised in such cases.

    When you work mostly with senior developers.
    If your team consists mainly of senior developers who have worked with one another for a longer period of time, then you don’t really need the aforementioned pull request micromanagement. You trust your developers and know that they are professionals. Let them do their job and don’t slow them down with all the Git flow bureaucracy.

## GIT Trunk-based Development Workflow

In the trunk-based development model, all developers work on a single branch with open access to it. Often it’s simply the master branch. They commit code to it and run it. It’s super simple.

In some cases, they create short-lived feature branches. Once code on their branch compiles and passess all tests, they merge it straight to master. It ensures that development is truly continuous and prevents developers from creating merge conflicts that are difficult to resolve.


The only way to review code in such an approach is to do full source code review. Usually, lengthy discussions are limited. No one has strict control over what is being modified in the source code base—that is why it’s important to have enforceable code style in place. Developers that work in such style should be experienced so that you know they won’t lower source code quality.

This style of work can be great when you work with a team of seasoned software developers. It enables them to introduce new improvements quickly and without unnecessary bureaucracy. It also shows them that you trust them, since they can introduce code straight into the master branch. Developers in this workflow are very autonomous—they are delivering directly and are checked on final results in the working product. There is definitely much less micromanagement and possibility for office politics in this method.

If, on the other hand, you do not have a seasoned team or you don’t trust them for some reason, you shouldn’t go with this method—you should choose Git flow instead. It will save you unnecessary worries.
Pros and Cons of Trunk-based Development

Let’s take a closer look at both sides of the cost—the very best and very worst scenarios.
When Does Trunk-based Development Work Best?

    When you are just starting up.
    If you are working on your minimum viable product, then this style is perfect for you. It offers maximum development speed with minimum formality. Since there are no pull requests, developers can deliver new functionality at the speed of light. Just be sure to hire experienced programmers.

    When you need to iterate quickly.
    Once you reached the first version of your product and you noticed that your customers want something different, then don’t think twice and use this style to pivot into a new direction. You are still in the exploration phase and you need to be able to change your product as fast as possible.

    When you work mostly with senior developers.
    If your team consists mainly of senior developers, then you should trust them and let them do their job. This workflow gives them the autonomy that they need and enables them to wield their mastery of their profession. Just give them purpose (tasks to accomplish) and watch how your product grows.

When Can Trunk-based Development Cause Problems?

    When you run an open-source project.
    If you are running an open-source project, then Git flow is the better option. You need very strict control over changes and you can’t trust contributors. After all, anyone can contribute. Including online trolls.

    When you have a lot of junior developers.
    If you hire mostly junior developers, then it’s a better idea to tightly control what they are doing. Strict pull requests will help them to to improve their skills and will find potential bugs more quickly.

    When you have established product or manage large teams.
    If you already have a prosperous product or manage large teams at a huge enterprise, then Git flow might be a better idea. You want to have strict control over what is happening with a well-established product worth millions of dollars. Probably, application performance and load capabilities are the most important things. That kind of optimization requires very precise changes.


## DEploymetn Strategies



### The Basic Deployment

In a basic deployment, all nodes within a target environment are updated at the same time with a new service or artifact version. Because of this, basic deployments are not outage-proof and they slow down rollback processes or strategies. Of all the deployment strategies shared, it is the riskiest.
Blue-Green vs Canary Deployment Strategies: The Basic Deployment
Pros:

The benefits of this strategy are that it is simple, fast, and cheap. Use this strategy if 1) your application service is not business, mission, or revenue-critical, or 2) your deployment is to a lower environment, during off-hours, or with a service that is not in use.
Cons:

Of all the deployment strategies shared, it is the riskiest and does not fall into best practices. Basic deployments are not outage-proof and do not provide for easy rollbacks.


### The Multi-Service Deployment



In a multi-service deployment all nodes within a target environment are updated with multiple new services simultaneously. This strategy is used for application services that have service or version dependencies, or if you’re deploying off-hours to resources that are not in use.
Blue-Green vs Canary Deployment Strategies: The Multi-Service Deployment
Pros:

Multi-service deployments are simple, fast, cheap, and not as risk-prone as a basic deployment.
Cons:

Multi-service deployments are slow to roll back and not outage-proof. Using this deployment strategy also leads to difficulty in managing, testing, and verifying all the service dependencies.

### Rolling Deployment

A rolling deployment is a deployment strategy that updates running instances of an application with the new release. All nodes in a target environment are incrementally updated with the service or artifact version in integer N batches.

Pros:

The benefits of a rolling deployment are that it is relatively simple to roll back, less risky than a basic deployment, and the implementation is simple. 
Cons:

Since nodes are updated in batches, rolling deployments require services to support both new and old versions of an artifact. Verification of an application deployment at every incremental change also makes this deployment slow.

### Blue-Green Deployment

Blue-green deployment is a deployment strategy that utilizes two identical environments, a “blue” (aka staging) and a “green” (aka production) environment with different versions of an application or service. Quality assurance and user acceptance testing are typically done within the blue environment that hosts new versions or changes. User traffic is shifted from the green environment to the blue environment once new changes have been testing and accepted within the blue environment. You can then switch to the new environment once the deployment is successful.
Blue-Green vs Canary Deployment Strategies: The Blue-Green Deployment
 Pros:

One of the benefits of the blue-green deployment is that it is simple, fast, well-understood, and easy to implement. Rollback is also straightforward, because you can simply flip traffic back to the old environment in case of any issues. Blue-green deployments are therefore not as risky compared to other deployment strategies.
Cons:

Cost is a drawback to blue-green deployments. Replicating a production environment can be complex and expensive, especially when working with microservices. Quality assurance and user acceptance testing may not identify all of the anomalies or regressions either, and so shifting all user traffic at once can present risks. An outage or issue could also have a wide-scale business impact before a rollback is triggered, and depending on the implementation, in-flight user transactions may be lost when the shift in traffic is made.

### Canary Deployment

A canary deployment is a deployment strategy that releases an application or service incrementally to a subset of users. All infrastructure in a target environment is updated in small phases (e.g: 2%, 25%, 75%, 100%). A canary release is the lowest risk-prone, compared to all other deployment strategies, because of this control.

Pros:

Canary deployments allow organizations to test in production with real users and use cases and compare different service versions side by side. It’s cheaper than a blue-green deployment because it does not require two production environments. And finally, it is fast and safe to trigger a rollback to a previous version of an application.
Cons:

Drawbacks to canary deployments involve testing in production and the implementations needed. Scripting a canary release can be complex: manual verification or testing can take time, and the required monitoring and instrumentation for testing in production may involve additional research.

### A/B Testing

In A/B testing, different versions of the same service run simultaneously as “experiments” in the same environment for a period of time. Experiments are either controlled by feature flags toggling, A/B testing tools, or through distinct service deployments. It is the experiment owner’s responsibility to define how user traffic is routed to each experiment and version of an application. Commonly, user traffic is routed based on specific rules or user demographics to perform measurements and comparisons between service versions. Target environments can then be updated with the optimal service version.
A/B Testing Deployment Strategy

The biggest difference between A/B testing and other deployment strategies is that A/B testing is primarily focused on experimentation and exploration. While other deployment strategies deploy many versions of a service to an environment with the immediate goal of updating all nodes with a specific version, A/B testing is about testing multiple ideas vs. deploying one specific tested idea.
Pros:

A/B testing is a standard, easy, and cheap method for testing new features in production. And luckily, there are many tools that exist today to help enable A/B testing.
Cons:

The drawbacks to A/B testing involve the experimental nature of its use case. Experiments and tests can sometimes break the application, service, or user experience. Finally, scripting or automating AB tests can also be complex.

https://harness.io/blog/continuous-verification/blue-green-canary-deployment-strategies/

https://scrumlotus.com/scrum-vs-kanban-vs-lean/

### AGILE

Agile prescribes working incrementally, collaboratively and flexibly; it does not prescribe a specific framework or methodology. A few of the most popular frameworks that Agile teams adopt are Scrum, Kanban and Extreme Programming. Teams may choose one of these frameworks or pieces of each.

Agile is a term used to describe approaches to software development emphasizing incremental delivery, team collaboration, continual planning, and continual learning. 

At its core, the manifesto declares 4 value statements representing the foundation of the Agile movement. As written, the manifesto states...

We have come to value:

    Individuals and interactions over processes and tools
    Working software over comprehensive documentation
    Customer collaboration over contract negotiation
    Responding to change over following a plan


### Scrum

According to the Scrum Guide, "Scrum is not a process or a technique for building products; rather, it is a framework within which you can employ various processes and techniques… Scrum is grounded in empirical process control theory, and employs an iterative, incremental approach to optimize predictability and control risk."

Scrum is the most prescriptive of the three frameworks and follows a set of repeated activities and ceremonies.
Scrum at a Glance 

    A product vision is created with input from stakeholders, customers and end users.
    The product owner creates a prioritized list of features called a product backlog.
    During sprint planning, the team pulls work from the product backlog to create a sprint backlog and collectively discusses how to implement those features.
    The team works during that timeboxed sprint (typically 1-4 weeks) to complete the sprint backlog's work.
    The team holds a daily scrum meeting to discuss commitments and impediments.
    The ScrumMaster helps remove impediments and keeps the team focused on its goal.
    At the end of the sprint, the team should demonstrate finished work (product that is ready to be deployed or shown to a user) at the sprint review.
    The sprint ends with a sprint retrospective wherein the team focuses on continuous improvement.
    This process cycles as needed.

## Kanban

Kanban started in Lean and Just In Time manufacturing from the Toyota Production Systems. It focuses on a visualized workflow where work is broken down in small pieces, pulled using a task board and Work-in-Process (WIP) is limited. By implementing and respecting WIP limits, following explicit process policies and measuring and managing flow, Kanban can identify bottlenecks and waste, reduce wait time and increase efficiency.
Kanban at a Glance

    Visualize current workflow (value stream).
    Identify and respect WIP.
    Measure and manage flow (reduce waste).
    Make process policies explicit.
    Implement feedback loops.
    Continuously improve.

## Extreme Programming

Extreme Programming (XP) is a framework centered around engineering principles and focused on ensuring delivery of high quality software. XP teams work collaboratively in short development cycles and are flexible and adaptable to change. XP utilizes user stories and frequent small planned releases.

XP has twelve core practices grouped in four categories.

    Fine Scale Feedback
        Test Driven Development
        Planning Game (frequent release and iteration planning)
        Whole Team (the customer is a member of the team and available at all times)
        Pair Programming (code should be produced by two people)
    Continuous Process
        Continuous Integration
        Design Improvement (embrace refactoring)
        Small Releases (deliver frequent releases of working functionality)
    Shared Understanding
        Simple Design
        System Metaphor (class and method should be named for functionality)
        Collective Code Ownership
        Coding Standards (entire team agrees on standards and holds one another accountable)
    Programmer Welfare
        Sustainable Pace (people perform best when rested)


### DEVSECOPS

The mindset shift to a DevSecOps culture includes an important thinking about not only preventing breaches, but assuming them as well.

### Key DevSecOps practices

There are several common DevSecOps practices that apply to virtually any team.

First, teams should focus on improving their mean time to detection and mean time to recovery. These are metrics that indicate how long it takes to detect a breach and how long it takes to recover, respectively. They can be tracked through ongoing live site testing of security response plans. When evaluating potential policies, improving these metrics should be an important consideration.

Teams should also practice defense in depth. When a breach happens, it often results in the attacker getting access to internal networks and everything they have to offer. While it would be ideal to stop them before it gets that far, a policy of assuming breaches would drive teams to minimize their exposure from an attacker who has already gotten in.

Finally, teams should perform periodic post-breach assessments of the practices and environments. After a breach has been resolved, the team should evaluate the performance of the policies, as well as their own adherence to them. This serves to not only ensure the policies are effective, but also that the team is actually following them. Every breach, whether real or practiced, should be seen as an opportunity to improve.

### Chaos engineering

Chaos engineering is a methodology that helps developers attain consistent reliability by hardening services against failures in production. Another way to think about chaos engineering is that it's about embracing the inherent chaos in complex systems and, through experimentation, growing confidence in your solution's ability to handle it.

A common way to introduce chaos is to deliberately inject faults that cause system components to fail. The goal is to observe, monitor, respond to, and improve your system's reliability under adverse circumstances. For example, taking dependencies offline (stopping API apps, shutting down VMs, etc.), restricting access (enabling firewall rules, changing connection strings, etc.), or forcing failover (database level, Front Door, etc.), is a good way to validate that the application is able to handle faults gracefully.

### Microservices architecture

As the name implies, a microservices architecture is an approach to building a server application as a set of small services. That means a microservices architecture is mainly oriented to the back-end, although the approach is also being used for the front end. Each service runs in its own process and communicates with other processes using protocols such as HTTP/HTTPS, WebSockets, or AMQP. Each microservice implements a specific end-to-end domain or business capability within a certain context boundary, and each must be developed autonomously and be deployable independently. Finally, each microservice should own its related domain data model and domain logic (sovereignty and decentralized data management) and could be based on different data storage technologies (SQL, NoSQL) and different programming languages.

The following are important aspects to enable success in going into production with a microservices-based system:

    Monitoring and health checks of the services and infrastructure.

    Scalable infrastructure for the services (that is, cloud and orchestrators).

    Security design and implementation at multiple levels: authentication, authorization, secrets management, secure communication, etc.

    Rapid application delivery, usually with different teams focusing on different microservices.

    DevOps and CI/CD practices and infrastructure.


Design patterns for microservices
Cloud Services

The goal of microservices is to increase the velocity of application releases, by decomposing the application into small autonomous services that can be deployed independently. A microservices architecture also brings some challenges. The design patterns shown here can help mitigate these challenges.

## Microservices design patterns

Ambassador can be used to offload common client connectivity tasks such as monitoring, logging, routing, and security (such as TLS) in a language agnostic way. Ambassador services are often deployed as a sidecar (see below).

Anti-corruption layer implements a façade between new and legacy applications, to ensure that the design of a new application is not limited by dependencies on legacy systems.

Backends for Frontends creates separate backend services for different types of clients, such as desktop and mobile. That way, a single backend service doesn't need to handle the conflicting requirements of various client types. This pattern can help keep each microservice simple, by separating client-specific concerns.

Bulkhead isolates critical resources, such as connection pool, memory, and CPU, for each workload or service. By using bulkheads, a single workload (or service) can't consume all of the resources, starving others. This pattern increases the resiliency of the system by preventing cascading failures caused by one service.

Gateway Aggregation aggregates requests to multiple individual microservices into a single request, reducing chattiness between consumers and services.

Gateway Offloading enables each microservice to offload shared service functionality, such as the use of SSL certificates, to an API gateway.

Gateway Routing routes requests to multiple microservices using a single endpoint, so that consumers don't need to manage many separate endpoints.

Sidecar deploys helper components of an application as a separate container or process to provide isolation and encapsulation.

Strangler Fig supports incremental refactoring of an application, by gradually replacing specific pieces of functionality with new services.

For the complete catalog of cloud design patterns on the Azure Architecture Center, see Cloud Design Patterns.


## CLOUD TYPES

Understanding your deployment options—Public cloud, private cloud, or hybrid cloud?

There’s no one type of cloud computing that’s right for everyone. Several different cloud computing models, types, and services have evolved to meet the rapidly changing technology needs of organizations.

There are three different ways to deploy cloud services: on a public cloud, private cloud, or hybrid cloud. Which deployment method depends on your business needs.
What is a public cloud?

### Hybrid cloud computing

A hybrid cloud is a type of cloud computing that combines on-premises infrastructure—or a private cloud—with a public cloud. Hybrid clouds allow data and apps to move between the two environments.

Many organizations choose a hybrid cloud approach due to business imperatives such as meeting regulatory and data sovereignty requirements, taking full advantage of on-premises technology investment, or addressing low latency issues.

The hybrid cloud is evolving to include edge workloads as well. Edge computing brings the computing power of the cloud to IoT devices—closer to where the data resides. By moving workloads to the edge, devices spend less time communicating with the cloud, reducing latency, and they are even able to operate reliably in extended offline periods.
The benefits of a hybrid cloud platform

A hybrid cloud platform gives organizations many advantages—such as greater flexibility, more deployment options, security, compliance, and getting more value from their existing infrastructure. When computing and processing demand fluctuates, hybrid cloud computing gives businesses the ability to seamlessly scale up their on-premises infrastructure to the public cloud to handle any overflow—without giving third-party datacenters access to the entirety of their data. Organizations gain the flexibility and innovation the public cloud provides by running certain workloads in the cloud while keeping highly sensitive data in their own datacenter to meet client needs or regulatory requirements.

This not only allows companies to scale computing resources— it also eliminates the need to make massive capital expenditures to handle short-term spikes in demand, as well as when the business needs to free up local resources for more sensitive data or applications. Companies will pay only for resources they temporarily use instead of having to purchase, program, and maintain additional resources and equipment that could remain idle over long periods of time.


*Advantages of the hybrid cloud:*

    Control—your organization can maintain a private infrastructure for sensitive assets or workloads that require low latency.
    Flexibility—you can take advantage of additional resources in the public cloud when you need them.
    Cost-effectiveness—with the ability to scale to the public cloud, you pay for extra computing power only when needed.
    Ease—transitioning to the cloud doesn’t have to be overwhelming because you can migrate gradually—phasing in workloads over time.


### PUBLIC CLOUD 

Public clouds are the most common type of cloud computing deployment. The cloud resources (like servers and storage) are owned and operated by a third-party cloud service provider and delivered over the internet. With a public cloud, all hardware, software, and other supporting infrastructure are owned and managed by the cloud provider. Microsoft Azure is an example of a public cloud.

In a public cloud, you share the same hardware, storage, and network devices with other organizations or cloud “tenants,” and you access services and manage your account using a web browser. Public cloud deployments are frequently used to provide web-based email, online office applications, storage, and testing and development environments.

Advantages of public clouds:

    Lower costs—no need to purchase hardware or software, and you pay only for the service you use.
    No maintenance—your service provider provides the maintenance.
    Near-unlimited scalability—on-demand resources are available to meet your business needs.
    High reliability—a vast network of servers ensures against failure.

### private cloud

A private cloud consists of cloud computing resources used exclusively by one business or organization. The private cloud can be physically located at your organization’s on-site datacenter, or it can be hosted by a third-party service provider. But in a private cloud, the services and infrastructure are always maintained on a private network and the hardware and software are dedicated solely to your organization.

In this way, a private cloud can make it easier for an organization to customize its resources to meet specific IT requirements. Private clouds are often used by government agencies, financial institutions, any other mid- to large-size organizations with business-critical operations seeking enhanced control over their environment.

Advantages of a private cloud:

    More flexibility—your organization can customize its cloud environment to meet specific business needs.
    More control—resources are not shared with others, so higher levels of control and privacy are possible.
    More scalability—private clouds often offer more scalability compared to on-premises infrastructure.

## CLOUD MODEL

Cloud computing types are service deployment models that let you choose the level of control over your information and types of services you need to provide. There are three main types of cloud computing services, sometimes called the cloud computing stack because they build on top of one another.

The first cloud computing type is infrastructure-as-a-service (IaaS), which is used for Internet-based access to storage and computing power. The most basic category of cloud computing types, IaaS lets you rent IT infrastructure - servers and virtual machines, storage, networks, and operating systems - from a cloud provider on a pay-as-you-go basis.

IaaS Examples: Amazon Web Services (AWS), Cisco Metapod, Microsoft Azure, Google Compute Engine (GCE), Joyent

The second cloud computing type is platform-as-a-service (PaaS) that gives developers the tools to build and host web applications. PaaS is designed to give users access to the components they require to quickly develop and operate web or mobile applications over the Internet, without worrying about setting up or managing the underlying infrastructure of servers, storage, networks, and databases.
PaaS makes the development, testing, and deployment of applications quick, simple, and cost-effective. With this technology, enterprise operations, or a third-party provider, can manage OSes, virtualization, servers, storage, networking, and the PaaS software itself. Developers, however, manage the applications.
PaaS Examples: elasticbeanstalk, RDS

The third cloud computing type is software-as-a-service (SaaS) which is used for web-based applications. SaaS is a method for delivering software applications over the Internet where cloud providers host and manage the software applications making it easier to have the same application on all of your devices at once by accessing it in the cloud.

SaaS Examples: Google Apps, Salesforce, Workday, Concur, Citrix GoToMeeting, Cisco WebEx
Common SaaS Use-Case: Replaces traditional on-device software
Technology Analyst Examples: Bill Pray (Gartner), Amy DeMartine (Forrester)

## ADVANTAGES CLOUD COMPUTING

- trade capital expenses for variable expenses
- benefits from massive economic of scale
- stop guessing capacity
- increase speed and agility
- go global in minutes


## DISASTER RECOVERY



    Recovery time objective (RTO): The maximum acceptable delay between the interruption of service and restoration of service. This determines an acceptable length of time for service downtime.
    Recovery point objective (RPO): The maximum acceptable amount of time since the last data recovery point. This determines what is considered an acceptable loss of data.


![alt text](https://d2908q01vomqb2.cloudfront.net/fc074d501302eb2b93e2554793fcaf50b3bf7291/2021/04/02/Figure-1.png)

### BACKUP RESTORe

The backup and recovery strategy is considered the least efficient for RTO. However, you can use AWS resources like Amazon EventBridge to build serverless automation, which will reduce RTO by improving detection and recovery. This will be explored further in a future blog post.

### PILOT LIGHT

With the pilot light strategy, the data is live, but the services are idle. Live data means the data stores and databases are up-to-date (or nearly up-to-date) with the active Region and ready to service read operations. I

in the pilot light strategy, basic infrastructure elements are in place like Elastic Load Balancing and Amazon EC2 Auto Scaling in Figure 6. But functional elements (like compute) are “shut off.”

### WARMSTAND BY

Like the pilot light strategy, the warm standby strategy maintains live data in addition to periodic backups. The difference between the two is infrastructure and the code that runs on it. A warm standby maintains a minimum deployment that can handle requests, but at a reduced capacity—it cannot handle production-level traffic.



### MULTI SITE ACTIVE ACTIVe

With multi-site active/active, two or more Regions are actively accepting requests. Failover consists of re-routing requests away from a Region that cannot serve them. Here, data is replicated across Regions and is actively used to serve read requests in those Regions. For write requests, you can use several patterns that include writing to the local Region or re-routing writes to specific Regions.

## Idempotency

idempotency — the ability to repeatedly apply code to guarantee a desired state on a system, with the assurance that you will get the same result every time. It ensures that the state of the infrastructure always matches the desired state.

## RoadMap Devops

![roadmaps devops](https://pbs.twimg.com/media/ErsZTKoXMAEH0l9.jpg:large)

1. Programming language
    - Python
    - golang
    - javascript
2. Server admin
    - Linux
    - Windows
3. Network
    - TCP/IP 
    - Protocols DNS, HTTPS, FTP, SSL
4. Servers
    - Apache
    - Nginx
    - Tomcat
5. Database
    - Mongo
    - Casandra    
    - Dynamo DB
    - Oracle
    - MySQL/ MariaDB
    - Postresql
6. IAC (Infraestructure as a code)    
    - Ansible
    - Cheff
    - Puppet
    - Docker
    - Kubernetes
    - Terraform
    - AWS Cloudformation
    - Azure template (ARM, BiCEPS)
    - Google deployment Manager
    - Pulumi
7. CI/CD
    - Jenkins
    - Circle CI
    - Travis CI
    - Gitlab
    - AWS codepipeline
    - bitbucket
8. Monitoring
    - Zabixx
    - Prometheus
    - Grafana
    - Datadog
    - New relic
    - ELK
    - Splunk
9. Cloud            
    - AWS
    - Azure  
    - GCP
    - Oracle
    - Open stack  

## Virtual Machine vs Container

in vitual machine you needd Guest OS and this make more heavier  in docker you don't need de guest OS so the docker is more lighter is platform independent


### LOG MANAGEMENT TOOLS

- Prometheus

Prometheus is a systems and service monitoring system that collects metrics from configured targets at specified intervals, evaluates rule expressions, displays results and triggers alerts when pre-defined conditions are met. With customers like DigitalOcean, SoundCloud, Docker, CoreOS and countless others, the Prometheus repository is a great example of how open-source projects can compete with leading technology and innovate in the field of systems and log management.

Key Features:

A custom-built query language for digging deep into your data that can then be used to create graphs, charts, tables, and custom alerts.
A selection of data visualization methods: Grafana, Console, and an inbuilt ExpressionEngine.
Efficient storage techniques to scale data appropriately.
Cost: Free, Open-Source.

- Fluentd

Fluentd collects events from various data sources and writes them to files, RDBMS, NoSQL, IaaS, SaaS, Hadoop and so on. Fluentd helps you unify your logging infrastructure. Fluentd’s flagship feature is an extensive library of plugins which provide extended support and functionality for anything related to log and data management within a concise developer environment.

Key Features:

Unified logging layer that can decouple data from multiple sources.
Gives structure to unstructured logs.
Flexible, but simple. Takes a couple of minutes to get it going.
Compatible with a majority of modern data sources.
Cost:

Free: Open-Source
Enterprise: Upon request.

Pros:

Good performance and resource usage
Good plugin ecosystem
Easy to use configuration
Good documentation
Cons:

No buffering before parsing, which may cause back pressure in the logging pipeline
Limited support for transforming data, like you could do with Logstash’s mutate filter or rsyslog’s variables and templates


- Nagios

Nagios provides a complete log management and monitoring solution which is based on its Nagios Log Server platform. With Nagios, a leading log analysis tool in this market, you can increase the security of all your systems, understand your network infrastructure and its events, and gain access to clear data about your network performance and how it can be stabilized.

Key Features:

A powerful out of the box dashboard that gives customers a way to filter, search, and conduct a comprehensive analysis of any incoming log data.
Extended availability through multiple server clusters so data isn’t lost in case of an outage.
Custom alert assignments based on queries and IT department in charge.
Tap into the live-stream of your data as its coming through the pipes.
Easy management of clusters lets you add more power and performance to your existing log management infrastructure.
Cost: Starting at $1995.

- pagerduty

PagerDuty helps developers, ITOps, DevOps, and businesses protect their brand reputation and customer experiences. An incident resolution platform, PagerDuty automates your resolutions and provides full-stack visibility and delivers actionable insights for better customer experiences.

Key Features:

Visualize each dimension of the customer experience.
Gain event intelligence and understand the context of disruptions across your infrastructure with actionable, time-series visualizations of correlated events.
Response orchestration to enable better collaboration and rapid resolution.
Discover patterns in performance and view post-mortem reports to analyze system efficiency.
Cost: FREE trial available for 14 days

Lite: $9/month billed annually or $10/month billed monthly – Unlimited notifications, 180+ integrations with top tools, alert triage and reduplication, reliable notifications and escalations, and more
Basic: $29/month billed annually or $34/month billed monthly – Unlimited notifications, 200+ integrations with top tools, all Lite features, plus incident enrichment, incident urgencies, on-call scheduling, and more
Standard: $49/month billed annually or $59/month billed annually – Unlimited notifications, 200+ integrations with top tools, all Basic features, plus coordinated response, incident subscription, postmortems, and more
Enterprise: $99/month billed annually – Unlimited notifications, 200+ integrations with top tools, all Standard features, plus operations command console, infrastructure health application, stakeholder users, live all routing, and more

- Logstash

Logstash from Elasticsearch is one of the most renowned open-source log management tool for managing, processing and transporting your log data and events. Logstash works as a data processor that can combine and transform data from multiple sources at the same time, then send it over to your favorite log management platform, such as Elasticsearch.

Key Features:

Ingest data from varied sets of sources: logs, metrics, web apps, data storages, AWS, without losing concurrency.
Real-time data parsing.
Create structure from unstructured data.
Pipeline encryption for data security.
Cost: Open-Source

Pros:

Easy to get started and move to complex configurations
Flexible: Logstash is used in various logging use-cases and even for non-logging data
Well-written documentation and lots of how-tos on the web
Cons:

High resource usage, compared to other log shippers
Lower performance, compared to alternatives

- Splunk

Splunk’s log management tool focuses on enterprise customers who need concise tools for searching, diagnosing and reporting any events surrounding data logs. Splunk’s software is built to support the process of indexing and deciphering logs of any type, whether structured, unstructured, or sophisticated application logs, based on a multi-line approach.

Key Features:

Splunk understands machine-data of any type; servers, web servers, networks, exchanges, mainframes, security devices, etc.
Flexible UI for searching and analyzing data in real-time.
Drilling algorithm for finding anomalies and familiar patterns across log files.
Monitoring and alert system for keeping an eye on important events and actions.
Visual reporting using an automated dashboard output.
Cost:

Free: 500MB data per day
Splunk Cloud: Starting at $186
Splunk Enterprise: Starting at $2,000

Pros:

Mature and feature-rich
Good data compression for most use-cases (assuming limited indexing, as recommended)
Logs and metrics under one roof
Cons:

Expensive
Slow queries for longer time ranges (assuming limited indexing, as recommended)
Less efficient for metrics storage than monitoring-focused tools

- Datadog

Datadog is a SaaS that started up as a monitoring (APM) tool and later added log management capabilities as well. You can send logs via HTTP(S) or syslog, either via existing log shippers (rsyslog, syslog-ng, Logstash, etc.) or through Datadog’s own agent. It features Logging without Limits™, which is a double-edged sword: harder to predict and manage costs, but you get pay-as-you-use pricing (see below) combined with the fact that you can archive and restore from archive.

Key Features:

Server-side processing pipeline for parsing and enriching logs
Automatically detects common log patterns
Can archive logs to AWS/Azure/Google Cloud storage and rehydrate them later
Pricing separates processing from storage:

Processing starts at $0.10 per ingested GB per month (e.g. $3 for 1GB/day)
Processing also applies to rehydration from archive, though here data is compressed
Storage starts at $1.59 for 3 days for 1M events (e.g. $47.7 for 1GB/day at 1K each, stored for 3 days)
Pros:

Easy search with good autocomplete (based on facets)
Integration with DataDog metrics and traces
Affordable, especially for short retention and/or if you rely on the archive for a few searches going back
Cons:

Not available on premises
Some users complain about cost getting out of control (due to flexible pricing). Though you can set daily processing quotas

- Elasticsearch, Logstash and Kibana (ELK stack or Elastic Stack)

The ELK stack contains most of the tools needed for a log management solution:

Log shippers such as Logstash and Filebeat
Elasticsearch as a scalable search engine
Kibana as the UI to search for logs or build visualizations
It’s very popular for centralizing logs, with lots of tutorials on how to use it all around the web. There’s a vast ecosystem of tools that you can use on top of the basic setup to enhance it with alerting, role-based access control, and more. We go into details about these extra additions in this blog post where we discuss Elastic Stack features alternatives.

Elasticsearch indexes every field by default, making searches fast
Real-time visualizations via API and Kibana
Data parsing and enriching before indexing
Pricing: Free & Open source. Some companies offer forms of hosted ELK, see above. There’s also Elastic Cloud which is a pure form of ELK in the cloud, that you’d mostly have to manage yourself.

Pros:

Scalable search engine as log storage
Mature log shippers
Web UI and visualizations in Kibana
Cons:

At scale, it may become difficult to maintain. Which is why Sematext offers ELK stack consulting, production support, and training
The open-source version of the ELK Stack misses some features like role-based access control and alerting. You can get these features through a commercial “Elastic Stack Features” or its alternatives or visa Open Distro for Elasticsearch.

- Grafana Loki

Loki and its ecosystem are an alternative to the ELK stack, but it makes different trade-offs. By indexing only some fields (labels), it can have a completely different architecture. Namely, the main write component (Ingester) will keep chunks of logs in memory, making recent queries fast. As chunks get older, they are written in two places: a key-values store (e.g. Cassandra) for labels and an object store (e.g. Amazon S3) for the chunk data. Neither of them need background maintenance as you add data (like Elasticsearch/Solr need merges).

If you query older data, you typically filter by labels and timeframe. This restricts the number of chunks that have to be retrieved from the long term storage.

Key features:

Logs and metrics in the same UI (Grafana)
Loki labels can be consistent with Prometheus labels
Pricing:

Free & Open source
There’s also Grafana Cloud, offering Loki as SaaS (with an on-premises option as well). Prices start at $49, which includes 100GB of log storage (30 days retention) and 3000 metrics series
Pros:

Faster ingestion compared to ELK: less indexing, no merging
Small storage footprint: smaller index, data is only written once to the long term storage (which typically has built-in replication)
Uses cheaper storage (e.g. AWS S3)
Cons:

Slower queries and analytics for longer time frames compared to ELK
Fewer log shipper options compared to ELK (e.g. Promtail or Fluentd)
Less mature than ELK (e.g. more difficult to install)

## Types Of Monitoring In DevOps: What Should You Monitor?
Continuous monitoring in DevOps comes in four forms:

Infrastructure monitoring 
Application monitoring
Network monitoring
Cost monitoring
Here are brief descriptions of each: 

Infrastructure monitoring
Infrastructure monitoring involves detecting, tracking, and compiling real-time data on the health and performance of the backend components of your DevOps tech stack. Those components include servers, databases, virtual machines, and containers, among other computing components in a system. 

There are two types of infrastructure monitoring:

In agent-based infrastructure monitoring, engineers install an agent (software) on each of their hosts, either physical or virtual. The agent collects infrastructure metrics and sends them to a monitoring tool for analysis and visualization.  
Agentless infrastructure monitoring doesn’t involve installing an agent. Instead, it uses built-in protocols such as SSH, NetFlow, SNMP, and WMI to relay infrastructure component metrics to monitoring tools.    
Each approach has its advantages and disadvantages. For example, agent-based monitoring collects more in-depth data because it is designed specifically for a particular monitoring platform. On the flip side, if you want to migrate to another platform, the agent may not be compatible with your new platform, resulting in data loss.

Several infrastructure components, including VMs (such as Hyper-V and VMware), servers, networking, storage, and flow devices, come with built-in agentless monitoring capabilities. You can also manage these components' monitoring centrally.  You can combine the two approaches to build a comprehensive monitoring strategy. 

Application monitoring
This ongoing process involves monitoring an application's performance and availability, along with the effects the two have on the user's experience. A monitoring application tracks your app's hardware utilization, SLA status, platform performance, and user response times. 

Among the metrics, DevOps engineers can monitor here are server diagnostics, error logs, network traffic reports, historical statistics, and failure diagnostics.      

Network monitoring
The software and hardware engineers use here enable them to monitor the health and performance of network components, such as switches, servers, and routers. A network monitoring system tracks bandwidth, uptime, and bottlenecks, such as failing switches or routers.   

Monitoring tools perform periodic checks to enable engineers to detect failing or failed incidences before they can affect user experiences. 

Cost monitoring
The DevOps pipeline involves a multitude of changes that can cause significant cost overruns, so tracking costs throughout is essential. Thus, any cloud cost anomalies will not surprise you with a hefty bill. 

Monitoring costs involves identifying resource usage. Besides real-time metrics, some advanced cost intelligence tools can collect exact costs per unit and per customer or project and transmit that information to engineers and finance.  

With this capability, you can forecast cost of goods sold (COGS), secure gross margins, and optimize resource utilization throughout different phases of DevOps.    

## Brncnhing Strategies

### Mainline branch

- Good things
    - Simple workflow
    - Ready for deploy
- Bad things
    - Careful branch large
    - If there isn’t test, is very risky
### Branch per feature
- Good things
    - Mater never have errors
    - We have a branch to comparing
- Bad things
    - Careful branch large
    - If there is rollback, it is lost all value delivered
### Environment based 
- Good things
    - Mater never have errors
    - We have a branch to comparing 
 - Bad things
    - Careful branch large
    - If there is rollback, it is lost all value delivered
    - We can’t Deploy automatization
### Git flow
- Good things
    - Much Documentation
    - Ordered branches
- Bad things
    - Careful branch large
    - If there is rollback, it is lost all value delivered
    - Difficult for teams little 

## Deployment strategies 

- recreate: terminate the old version and release the new one
    - Pros:
        - Easy to setup.
        - Application state entirely renewed
    - Cons:
        - High impact on the user, expect downtime that depends on both shutdown and boot duration of the application.

- ramped also known as rolling-update or incremental: release a new version on a rolling update fashion, one after the other
    

- blue/green: release a new version alongside the old version then switch traffic
- canary: release a new version to a subset of users, then proceed to a full rollout
- a/b testing: release a new version to a subset of users in a precise way (HTTP headers,cookie, weight, etc.).
- shadow: release a new version alongside the old version. Incoming traffic is mirrored to thenew version and doesn't impact the response.

### throttling
En el contexto de la tecnología, el "throttling" se utiliza para controlar la cantidad de recursos que un dispositivo o una aplicación puede utilizar. Por ejemplo, un proveedor de servicios de internet podría "throttle" la velocidad de tu conexión a internet si has consumido una cierta cantidad de datos en un período de tiempo específico. Esto significa que tu velocidad de conexión se reduce temporalmente para evitar un uso excesivo de datos.

En resumen, "throttling" es como reducir la velocidad de algo para controlar su flujo o uso, ya sea de datos en internet, energía en un motor, o cualquier otro recurso.





