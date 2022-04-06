kanban, agile, scrum  https://www.toptal.com/project-managers/agile/project-management-blueprint-part-1-agile-scrum-kanban-lean

DEVOPS

What is DevOps?

DevOps is a work culture primarily centered around collaboration, communication, and integration among the development teams. It was introduced to address the disconnect primarily between the development, operations, and quality assurance teams. As a result, it’s becoming crucial for businesses to adopt DevOps practices, not only for seamless software development and operations but also for the high quality of deployment for successful product delivery. 

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

CI/CD

Successful CI  (continuos integration) means new code changes to an app are regularly built, tested, and merged to a shared repository. It’s a solution to the problem of having too many branches of an app in development at once that might conflict with each other.

The "CD" in CI/CD refers to continuous delivery and/or continuous deployment, which are related concepts that sometimes get used interchangeably. Both are about automating further stages of the pipeline, but they’re sometimes used separately to illustrate just how much automation is happening.

What is continuous integration?

Continuous integration (CI) is the process of automating and integrating code changes and updates from many team members during software development. In CI, automated tools confirm that software code is valid and error-free before it's integrated, which helps detect bugs and speed up new releases.
What is continuous delivery?

Continuous delivery (CD) is the ability to push new software into production multiple times per day, automating the delivery of applications to infrastructure environments. CD is part of DevOps, which helps shorten the software development lifecycle.

