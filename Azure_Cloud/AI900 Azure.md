# Artificial intelligence

we tend to think of AI as software that exhibits one or more human-like capabilities, as shown in the following table:

Capability|	Description|
|-|-|
Visual perception | The ability to use computer vision capabilities to accept, interpret, and process input from images, video streams, and live cameras.
Text analysis | The ability to use natural language processing (NLP) to not only "read", but also extract semantic meaning from text-based data.
Speech | The ability to recognize speech as input and synthesize spoken output. The combination of speech capabilities together with the ability to apply NLP analysis of text enables a form of human-compute interaction that's become known as conversational AI, in which users can interact with AI agents (usually referred to as bots) in much the same way they would with another human.
Decision making | The ability to use past experience and learned correlations to assess situations and take appropriate actions. For example, recognizing anomalies in sensor readings and taking automated action to prevent failure or system damage.

## Data science
Data science is a discipline that focuses on the processing and analysis of data; applying statistical techniques to uncover and visualize relationships and patterns in the data, and defining experimental models that help explore those patterns.


## Machine learning
Machine learning is a subset of data science that deals with the training and validation of predictive models. Typically, a data scientist prepares the data and then uses it to train a model based on an algorithm that exploits the relationships between the features in the data to predict values for unknown labels.


## Artificial intelligence
Artificial intelligence usually (but not always) builds on machine learning to create software that emulates one or more characteristics of human intelligence.

## Model training and inferencing
Many AI systems rely on predictive models that must be trained using sample data. The training process analyzes the data and determines relationships between the features in the data (the data values that will generally be present in new observations) and the label (the value that the model is being trained to predict).

After the model has been trained, you can submit new data that includes known feature values and have the model predict the most likely label. Using the model to make predictions is referred to as inferencing.


## Probability and confidence scores
A well-trained machine learning model can be accurate, but no predictive model is infallible. The predictions made by machine learning models are based on probability, and while software engineers don't require a deep mathematical understanding of probability theory, it's important to understand that predictions reflect statistical likelihood, not absolute truth. 

## Responsible AI and ethics
It's important for software engineers to consider the impact of their software on users, and society in general; including ethical considerations about its use. When the application is imbued with artificial intelligence, these considerations are particularly important due to the nature of how AI systems work and inform decisions; often based on probabilistic models, which are in turn dependent on the data with which they were trained.

### **Fairness** justicia

AI systems should treat all people fairly. For example, suppose you create a machine learning model to support a loan approval application for a bank. The model should make predictions of whether or not the loan should be approved without incorporating any bias based on gender, ethnicity, or other factors that might result in an unfair advantage or disadvantage to specific groups of applicants.

Consider fairness from the beginning of the application development process; carefully reviewing training data to ensure it's representative of all potentially affected subjects, and evaluating predictive performance for subsections of your user population throughout the development lifecycle.

### **Reliability and safety** fibilidad y seguridad


AI systems should perform reliably and safely. For example, consider an AI-based software system for an autonomous vehicle; or a machine learning model that diagnoses patient symptoms and recommends prescriptions. Unreliability in these kinds of system can result in substantial risk to human life.

As with any software, AI-based software application development must be subjected to rigorous testing and deployment management processes to ensure that they work as expected before release. Additionally, software engineers need to take into account the probabilistic nature of machine learning models, and apply appropriate thresholds when evaluating confidence scores for predictions.

### **Privacy and security**


AI systems should be secure and respect privacy. The machine learning models on which AI systems are based rely on large volumes of data, which may contain personal details that must be kept private. Even after models are trained and the system is in production, they use new data to make predictions or take action that may be subject to privacy or security concerns; so appropriate safeguards to protect data and customer content must be implemented.

### **Inclusiveness**


AI systems should empower everyone and engage people. AI should bring benefits to all parts of society, regardless of physical ability, gender, sexual orientation, ethnicity, or other factors.

One way to optimize for inclusiveness is to ensure that the design, development, and testing of your application includes input from as diverse a group of people as possible.

### **Transparency**


AI systems should be understandable. Users should be made fully aware of the purpose of the system, how it works, and what limitations may be expected.

For example, when an AI system is based on a machine learning model, you should generally make users aware of factors that may affect the accuracy of its predictions, such as the number of cases used to train the model, or the specific features that have the most influence over its predictions. You should also share information about the confidence score for predictions.

### **Accountability** Responsabilidad


People should be accountable for AI systems. Although many AI systems seem to operate autonomously, ultimately it's the responsibility of the developers who trained and validated the models they use, and defined the logic that bases decisions on model predictions to ensure that the overall system meets responsibility requirements. To help meet this goal, designers and developers of AI-based solution should work within a framework of governance and organizational principles that ensure the solution meets ethical and legal standards that are clearly defined.

## Capabilities of Azure Machine Learning

Azure Machine Learning provides the following features and capabilities:


|Feature|	Capability|
|-|-|
Automated machine learning	| This feature enables non-experts to quickly create an effective machine learning model from data.
Azure Machine Learning designer|	A graphical interface enabling no-code development of machine learning solutions.
Data and compute management	|Cloud-based data storage and compute resources that professional data scientists can use to run data experiment code at scale.
Pipelines	|Data scientists, software engineers, and IT operations professionals can define pipelines to orchestrate model training, deployment, and management tasks.

Data scientists can use Azure Machine Learning throughout the entire machine learning lifecycle to:

- Ingest and prepare data.
- Run experiments to explore data and train predictive models.
- Deploy and manage trained models as web services.

Software engineers may interact with Azure Machine Learning in the following ways:

- Using Automated Machine Learning or Azure Machine Learning designer to train machine learning models and deploy them as REST services that can be integrated into AI-enabled applications.
- Collaborating with data scientists to deploy models based on common frameworks such as Scikit-Learn, PyTorch, and TensorFlow as web services, and consume them in applications.
- Using Azure Machine Learning SDKs or command-line interface (CLI) scripts to orchestrate DevOps processes that manage versioning, deployment, and testing of machine learning models as part of an overall application delivery solution.

### Capabilities of Azure Cognitive Services

Azure Cognitive Services are cloud-based services that encapsulate AI capabilities. Rather than a single product, you should think of Azure Cognitive Services as a set of individual services that you can use as building blocks to compose sophisticated, intelligent applications.

Cognitive services offer a wide range of prebuilt AI capabilities across multiple categories, as shown in the following table.

Language|	Speech|	Vision|	Decision|
|-|-|-|-|
Text analysis	|Speech to Text|	Image analysis|	Anomaly detection
Question answering|	Text to Speech|	Video analysis|	Content moderation|
Language understanding|	Speech Translation|	Image classification	|Content personalization
Translation|	Speaker Recognition	|Object detection	
|||Facial analysis	
|||Optical character recognition

## Applied AI Services
You can use Cognitive Services to build your own AI solutions, and they also underpin Azure Applied AI Services that provide out-of-the-box solutions for common AI scenarios. Applied AI Services include:

- Azure Form Recognizer - an optical character recognition (OCR) solution that can extract semantic meaning from forms, such as invoices, receipts, and others.
- Azure Metrics Advisor - A service build on the Anomaly Detector cognitive service that simplifies real-time monitoring and response to critical metrics.
- Azure Video Analyzer for Media - A comprehensive video analysts solution build on the Video Indexer cognitive service.
- Azure Immersive Reader - A reading solution that supports people of all ages and abilities.
- Azure Bot Service - A cloud service for delivering conversational AI solutions, or bots.
- Azure Cognitive Search - A cloud-scale search solution that uses cognitive services to extract insights from data and documents.

## Capabilities of the Azure Bot Service

Bots are AI-powered software agents that can engage in conversational interactions. For example, a web site may include a chat bot interface in which users can submit questions using natural language and receive conversational responses, or an organization might use a bot to answer incoming phone calls and gather initial information before forwarding the call to the appropriate operator.

The Azure Bot Service is an Applied AI service for developing and delivering bot solutions that support conversational interactions across multiple channels, such as web chat, email, Microsoft Teams, and others.

AI engineers can develop Bots by writing code, using the classes available in the Bot Framework SDK. Alternatively, you can use the Bot Framework Composer to develop complex bots using a visual design interface.

## Capabilities of Azure Cognitive Search

Searching for information is a common requirement in many applications, from dedicated search engine web sites to mobile apps that can find context-appropriate information based on where you are and what you want to accomplish.

Azure Cognitive Search is an Applied AI Service that enables you to ingest and index data from various sources, and search the index to find, filter, and sort information extracted from the source data.

## What is AI?
Simply put, AI is the creation of software that imitates human behaviors and capabilities. Key workloads include:

- Machine learning - This is often the foundation for an AI system, and is the way we "teach" a computer model to make prediction and draw conclusions from data.
- Anomaly detection - The capability to automatically detect errors or unusual activity in a system.
- Computer vision - The capability of software to interpret the world visually through cameras, video, and images.
- Natural language processing - The capability for a computer to interpret written or spoken language, and respond in kind.
- Knowledge mining - The capability to extract information from large volumes of often unstructured data to create a searchable knowledge store.

## Anomaly detection

anomaly detection - a machine learning based technique that analyzes data over time and identifies unusual changes.

In Microsoft Azure, the Anomaly Detector service provides an application programming interface (API) that developers can use to create anomaly detection solutions.

## computer vision

Computer Vision is an area of AI that deals with visual processing. 

### Computer Vision models and capabilities

Most computer vision solutions are based on machine learning models that can be applied to visual input from cameras, videos, or images. The following table describes common computer vision tasks.

Task|	Description
|-|-|
Image classification|Image classification involves training a machine learning model to classify images based on their contents. 
Object detection|Object detection machine learning models are trained to classify individual objects within an image, and identify their location with a bounding box. Semantic segmentation| Semantic segmentation is an advanced machine learning technique in which individual pixels in the image are classified according to the object to which they belong. 
Image analysis|	You can create solutions that combine machine learning models with advanced image analysis techniques to extract information from images, including "tags" that could help catalog the image or even descriptive captions that summarize the scene shown in the image.
Face detection, analysis, and recognition|Face detection is a specialized form of object detection that locates human faces in an image. This can be combined with classification and facial geometry analysis techniques to recognize individuals based on their facial features.
Optical character recognition (OCR)	|Optical character recognition is a technique used to detect and read text in images. You can use OCR to read text in photographs (for example, road signs or store fronts) or to extract information from scanned documents such as letters, invoices, or forms.

### Computer vision services in Microsoft Azure
Microsoft Azure provides the following cognitive services to help you create computer vision solutions:

Service	|Capabilities
|-|-|
Computer Vision|	You can use this service to analyze images and video, and extract descriptions, tags, objects, and text.
Custom Vision|	Use this service to train custom image classification and object detection models using your own images.
Face|	The Face service enables you to build face detection and facial recognition solutions.
Form Recognizer|	Use this service to extract information from scanned forms and invoices.

## Natural language processing

Natural language processing (NLP) is the area of AI that deals with creating software that understands written and spoken language.

NLP enables you to create software that can:

- Analyze and interpret text in documents, email messages, and other sources.
- Interpret spoken language, and synthesize speech responses.
- Automatically translate spoken or written phrases between languages.
- Interpret commands and determine appropriate actions.

### Natural language processing in Microsoft Azure
In Microsoft Azure, you can use the following cognitive services to build natural language processing solutions:

Service	|Capabilities
|-|-|
Language|	Use this service to access features for understanding and analyzing text, training language models that can understand spoken or text-based commands, and building intelligent applications.
Translator	|Use this service to translate text between more than 60 languages.
Speech|	Use this service to recognize and synthesize speech, and to translate spoken languages.
Azure Bot	|This service provides a platform for conversational AI, the capability of a software "agent" to participate in a conversation. Developers can use the Bot Framework to create a bot and manage it with Azure Bot Service - integrating back-end services like Language, and connecting to channels for web chat, email, Microsoft Teams, and others.

## knowledge mining

Knowledge mining is the term used to describe solutions that involve extracting information from large volumes of often unstructured data to create a searchable knowledge store.

### Knowledge mining in Microsoft Azure
One of these knowledge mining solutions is Azure Cognitive Search, a private, enterprise, search solution that has tools for building indexes. The indexes can then be used for internal only use, or to enable searchable content on public facing internet assets.

## Challenges and risks with AI

Artificial Intelligence is a powerful tool that can be used to greatly benefit the world. However, like any tool, it must be used responsibly.

The following table shows some of the potential challenges and risks facing an AI application developer.

Challenge or Risk|	Example
|-|-|
Bias can affect results|	A loan-approval model discriminates by gender due to bias in the data with which it was trained
Errors may cause harm|	An autonomous vehicle experiences a system failure and causes a collision
Data could be exposed|	A medical diagnostic bot is trained using sensitive patient data, which is stored insecurely
Solutions may not work for everyone|	A home automation assistant provides no audio output for visually impaired users
Users must trust a complex system|	An AI-based financial tool makes investment recommendations - what are they based on?
Who's liable for AI-driven decisions?|	An innocent person is convicted of a crime based on evidence from facial recognition – who's responsible?

 ## Machine learning

 Machine learning is a technique that uses mathematics and statistics to create a model that can predict unknown values.

Mathematically, you can think of machine learning as a way of defining a function (let's call it f) that operates on one or more features of something (which we'll call x) to calculate a predicted label (y) - like this:

f(x) = y

### Types of machine learning
There are two general approaches to machine learning, supervised and unsupervised machine learning. In both approaches, you train a model to make predictions.

The supervised machine learning approach requires you to start with a dataset with known label values. Two types of supervised machine learning tasks include regression and classification.

- Regression: used to predict a continuous value; like a price, a sales total, or some other measure.
- Classification: used to determine a binary class label; like whether a patient has diabetes or not.

The unsupervised machine learning approach starts with a dataset without known label values. One type of unsupervised machine learning task is clustering.

- Clustering: used to determine labels by grouping similar information into label groups; like grouping measurements from birds into species.

## Azure Machine Learning workspace
To use Azure Machine Learning, you first create a workspace resource in your Azure subscription. You can then use this workspace to manage data, compute resources, code, models, and other artifacts related to your machine learning workloads.

After you have created an Azure Machine Learning workspace, you can develop solutions with the Azure machine learning service either with developer tools or the Azure Machine Learning studio web portal.

## Azure Machine Learning studio
Azure Machine Learning studio is a web portal for machine learning solutions in Azure. It includes a wide range of features and capabilities that help data scientists prepare data, train models, publish predictive services, and monitor their usage. To begin using the web portal, you need to assign the workspace you created in the Azure portal to Azure Machine Learning studio

## Azure Machine Learning compute
At its core, Azure Machine Learning is a service for training and managing machine learning models, for which you need compute on which to run the training process.

Compute targets are cloud-based resources on which you can run model training and data exploration processes.

In Azure Machine Learning studio, you can manage the compute targets for your data science activities. There are four kinds of compute resource you can create:

- Compute Instances: Development workstations that data scientists can use to work with data and models.
- Compute Clusters: Scalable clusters of virtual machines for on-demand processing of experiment code.
- Inference Clusters: Deployment targets for predictive services that use your trained models.
- Attached Compute: Links to existing Azure compute resources, such as Virtual Machines or Azure Databricks clusters.

## Azure Automated Machine Learning

Azure Machine Learning includes an automated machine learning capability that automatically tries multiple pre-processing techniques and model-training algorithms in parallel. These automated capabilities use the power of cloud compute to find the best performing supervised machine learning model for your data.

### the AutoML process

You can think of the steps in a machine learning process as:

- Prepare data: Identify the features and label in a dataset. Pre-process, or clean and transform, the data as needed.
- Train model: Split the data into two groups, a training and a validation set. Train a machine learning model using the training data set. Test the machine learning model for performance using the validation data set.

    - Classification (predicting categories or classes)
    - Regression (predicting numeric values)
    - Time series forecasting (predicting numeric values at a future point in time)



- Evaluate performance: Compare how close the model's predictions are to the known labels.

    A technique called cross-validation is used to calculate the evaluation metric.

    The Residual Histogram shows the frequency of residual value ranges. Residuals represent variance between predicted and true values that can't be explained by the model, in other words, errors. 


- Deploy a predictive service: After you train a machine learning model, you can deploy the model as an application on a server or device so that others can use it.

    In Azure Machine Learning, you can deploy a service as an Azure Container Instances (ACI) or to an Azure Kubernetes Service (AKS) cluster. For production scenarios, an AKS deployment is recommended, for which you must create an inference cluster compute target. 

## Regression machine learning scenarios

Regression is a form of machine learning used to understand the relationships between variables to predict a desired outcome. Regression predicts a numeric label or outcome based on variables, or features. 

Regression is an example of a supervised machine learning technique in which you train a model using data that includes both the features and known values for the label, so that the model learns to fit the feature combinations to the label. Then, after training has been completed, you can use the trained model to predict labels for new items for which the label is unknown.

## Azure Machine Learning designer

In Azure Machine Learning studio, there are several ways to author regression machine learning models. One way is to use a visual interface called designer that you can use to train, test, and deploy machine learning models. The drag-and-drop interface makes use of clearly defined inputs and outputs that can be shared, reused, and version controlled.
 
 ### Pipelines
Pipelines let you organize, manage, and reuse complex machine learning workflows across projects and users. A pipeline starts with the dataset from which you want to train the model. Each time you run a pipeline, the configuration of the pipeline and its results are stored in your workspace as a pipeline job.

### Components
An Azure Machine Learning component encapsulates one step in a machine learning pipeline. You can think of a component as a programming function and as a building block for Azure Machine Learning pipelines. In a pipeline project, you can access data assets and components from the left panel's Asset Library tab.

### Datasets
You can create data assets on the Data page from local files, a datastore, web files, and Open Datasets. These data assets will appear along with standard sample datasets in designer's Asset Library.

### Azure Machine Learning Jobs
An Azure Machine Learning (ML) job executes a task against a specified compute target. Jobs enable systematic tracking for your machine learning experimentation and workflows. Once a job is created, Azure ML maintains a run record for the job. All of your jobs' run records can be viewed in Azure ML studio.

- Mean Absolute Error (MAE): The average difference between predicted values and true values. This value is based on the same units as the label, in this case dollars. The lower this value is, the better the model is predicting.
- Root Mean Squared Error (RMSE): The square root of the mean squared difference between predicted and true values. The result is a metric based on the same unit as the label (dollars). When compared to the MAE (above), a larger difference indicates greater variance in the individual errors (for example, with some errors being very small, while others are large).
- Relative Squared Error (RSE): A relative metric between 0 and 1 based on the square of the differences between predicted and true values. The closer to 0 this metric is, the better the model is performing. Because this metric is relative, it can be used to compare models where the labels are in different units.
- Relative Absolute Error (RAE): A relative metric between 0 and 1 based on the absolute differences between predicted and true values. The closer to 0 this metric is, the better the model is performing. Like RSE, this metric can be used to compare models where the labels are in different units.
- Coefficient of Determination (R2): This metric is more commonly referred to as R-Squared, and summarizes how much of the variance between predicted and true values is explained by the model. The closer to 1 this value is, the better the model is performing.


## Classification scenarios

Confusion matrix
The confusion matrix shows cases where both the predicted and actual values were 1 (known as true positives) at the top left, and cases where both the predicted and the actual values were 0 (true negatives) at the bottom right. The other cells show cases where the predicted and actual values differ (false positives and false negatives).

For a binary classification model where you're predicting one of two possible values, the confusion matrix is a 2x2 grid showing the predicted and actual value counts for classes 0 and 1

For a multi-class classification model (where there are more than two possible classes), the same approach is used to tabulate each possible combination of actual and predicted value counts - so a model with three possible classes would result in a 3x3 matrix with a diagonal line of cells where the predicted and actual labels match.

Metrics can be derived from the confusion matrix include:

- **Accuracy:** The ratio of correct predictions (true positives + true negatives) to the total number of predictions.
- **Precision:** The fraction of the cases classified as positive that are actually positive (the number of true positives divided by the number of true positives plus false positives).
- **Recall:** The fraction of positive cases correctly identified (the number of true positives divided by the number of true positives plus false negatives).
- F1 Score: An overall metric that essentially combines precision and recall.

![Descripción de la imagen](.\Images\Matriz_conufssion.png)



### Choosing a threshold
A classification model predicts the probability for each possible class. In other words, the model calculates a likelihood for each predicted label. In the case of a binary classification model, the predicted probability is a value between 0 and 1.

### ROC curve and AUC metric
Another term for recall is True positive rate, and it has a corresponding metric named False positive rate, which measures the number of negative cases incorrectly identified as positive compared the number of actual negative cases. Plotting these metrics against each other for every possible threshold value between 0 and 1 results in a curve, known as the ROC curve (ROC stands for receiver operating characteristic, but most data scientists just call it a ROC curve). In an ideal model, the curve would go all the way up the left side and across the top, so that it covers the full area of the chart. The larger the area under the curve, of AUC metric, (which can be any value from 0 to 1), the better the model is performing. You can review the ROC curve in Evaluation Results.

AUC ranges in value from 0 to 1. A model whose predictions are 100% wrong has an AUC of 0.0; one whose predictions are 100% correct has an AUC of 1.0.

An AUC of 0.5 is what you'd expect with random prediction of a binary model.



## clustering machine learning scenarios

Clustering is a type of unsupervised learning, is a form of machine learning that is used to group similar items into clusters based on their features. 

### steps for clustering

- Prepare data
To train a clustering model, you need a dataset that includes multiple observations of the items you want to cluster, including numeric features that can be used to determine similarities between individual cases that will help separate them into clusters.

- Train model
To train a clustering model, you need to apply a clustering algorithm to the data, using only the features that you have selected for clustering. You'll train the model with a subset of the data, and use the rest to test the trained model.

The K-Means Clustering algorithm groups items into the number of clusters, or centroids, you specify - a value referred to as K.

The K-Means algorithm works by:

1. Initializing K coordinates as randomly selected points called centroids in n-dimensional space (where n is the number of dimensions in the feature vectors).
2. Plotting the feature vectors as points in the same space, and assigning each point to its closest centroid.
3. Moving the centroids to the middle of the points allocated to it (based on the mean distance).
4. Reassigning the points to their closest centroid after the move.
5. Repeating steps 3 and 4 until the cluster allocations stabilize or the specified number of iterations has completed.

- Evaluate performance

    After training a model, it is important to evaluate its performance. There are many performance metrics and methodologies for evaluating how well a model makes predictions.
    These metrics can help data scientists assess how well the model separates the clusters. They include a row of metrics for each cluster, and a summary row for a combined evaluation. The metrics in each row are:

    - Average Distance to Other Center: This indicates how close, on average, each point in the cluster is to the centroids of all other clusters.
    - Average Distance to Cluster Center: This indicates how close, on average, each point in the cluster is to the centroid of the cluster.
    - Number of Points: The number of points assigned to the cluster.
    - Maximal Distance to Cluster Center: The maximum of the distances between each point and the centroid of that point’s cluster. If this number is high, the cluster may be widely dispersed. This statistic in combination with the Average Distance to Cluster Center helps you determine the cluster’s spread.

- Deploy a predictive service

    You have the ability to deploy a service that can be used in real-time. In order to automate your model into a service that makes continuous predictions, you need to create and deploy an inference pipeline.

    - Inference pipeline

        To deploy your pipeline, you must first convert the training pipeline into a real-time inference pipeline. This process removes training components and adds web service inputs and outputs to handle requests.

- Deployment

    After creating the inference pipeline, you can deploy it as an endpoint. In the endpoints page, you can view deployment details, test your pipeline service with sample data, and find credentials to connect your pipeline service to a client application.

## Understand image classification
Image classification is a machine learning technique in which the object being classified is an image, such as a photograph.

To create an image classification model, you need data that consists of features and their labels. The existing data is a set of categorized images. Digital images are made up of an array of pixel values, and these are used as features to train the model based on the known image classes.

Common techniques used to train image classification models have been encapsulated into the **Custom Vision** cognitive service in Microsoft Azure; making it easy to train a model and publish it as a software service with minimal knowledge of deep learning techniques. You can use the Custom Vision cognitive service to train image classification models and deploy them as services for applications to use.

### Azure resources for Custom Vision
Creating an image classification solution with Custom Vision consists of two main tasks. First you must use existing images to train the model, and then you must publish the model so that client applications can use it to generate predictions.

For each of these tasks, you need a resource in your Azure subscription. You can use the following types of resource:

- **Custom Vision**: A dedicated resource for the custom vision service, which can be training, a prediction, or both resources.
- **Cognitive Services**: A general cognitive services resource that includes Custom Vision along with many other cognitive services. You can use this type of resource for training, prediction, or both.

### Model training
To train a classification model, you must upload images to your training resource and label them with the appropriate class labels. Then, you must train the model and evaluate the training results.

You can perform these tasks in the Custom Vision portal, or if you have the necessary coding experience you can use one of the Custom Vision service programming language-specific software development kits (SDKs).

### Model evaluation
Model training process is an iterative process in which the Custom Vision service repeatedly trains the model using some of the data, but holds some back to evaluate the model. At the end of the training process, the performance for the trained model is indicated by the following evaluation metrics:

-Precision: What percentage of the class predictions made by the model were correct? For example, if the model predicted that 10 images are oranges, of which eight were actually oranges, then the precision is 0.8 (80%).
- Recall: What percentage of class predictions did the model correctly identify? For example, if there are 10 images of apples, and the model found 7 of them, then the recall is 0.7 (70%).
- Average Precision (AP): An overall metric that takes into account both precision and recall).


### Using the model for prediction
After you've trained the model, and you're satisfied with its evaluated performance, you can publish the model to your prediction resource. When you publish the model, you can assign it a name (the default is "IterationX", where X is the number of times you have trained the model).

To use your model, client application developers need the following information:

- Project ID: The unique ID of the Custom Vision project you created to train the model.
- Model name: The name you assigned to the model during publishing.
- Prediction endpoint: The HTTP address of the endpoints for the prediction resource to which you published the model (not the training resource).
- Prediction key: The authentication key for the prediction resource to which you published the model (not the training resource).

## Object detection

An object detection model might be used to identify the individual objects in an image and return the following information:

Notice that an object detection model returns the following information:

- The class of each object identified in the image.
- The probability score of the object classification (which you can interpret as the confidence of the predicted class being correct)
- The coordinates of a bounding box for each object.

#### Object detection vs. image classification

Image classification is a machine learning based form of computer vision in which a model is trained to categorize images based on the primary subject matter they contain. Object detection goes further than this to classify individual objects within the image, and to return the coordinates of a bounding box that indicates the object's location.

### Azure resources for Custom Vision
Creating an object detection solution with Custom Vision consists of three main tasks. First you must use upload and tag images, then you can train the model, and finally you must publish the model so that client applications can use it to generate predictions.

For each of these tasks, you need a resource in your Azure subscription. You can use the following types of resource:

- Custom Vision: A dedicated resource for the custom vision service, which can be either a training, a prediction or a both resource.
- Cognitive Services: A general cognitive services resource that includes Custom Vision along with many other cognitive services. You can use this type of resource for training, prediction, or both.

### Image tagging
Before you can train an object detection model, you must tag the classes and bounding box coordinates in a set of training images. This process can be time-consuming, but the Custom Vision portal provides a graphical interface that makes it straightforward

### Model training and evaluation
To train the model, you can use the Custom Vision portal, or if you have the necessary coding experience you can use one of the Custom Vision service programming language-specific software development kits (SDKs). Training an object detection model can take some time, depending on the number of training images, classes, and objects within each image.

At the end of the training process, the performance for the trained model is indicated by the following evaluation metrics:

- Precision: What percentage of class predictions did the model correctly identify? For example, if the model predicted that 10 images are oranges, of which eight were actually oranges, then the precision is 0.8 (80%).
- Recall: What percentage of the class predictions made by the model were correct? For example, if there are 10 images of apples, and the model found 7 of them, then the recall is 0.7 (70%).
- Mean Average Precision (mAP): An overall metric that takes into account both precision and recall across all classes.

### Using the model for prediction
After you've trained the model, and you're satisfied with its evaluated performance, you can publish the model to your prediction resource. 

To use you model, client application developers need the following information:

- Project ID: The unique ID of the Custom Vision project you created to train the model.
- Model name: The name you assigned to the model during publishing.
- Prediction endpoint: The HTTP address of the endpoints for the prediction resource to which you published the model (not the training resource).
- Prediction key: The authentication key for the prediction resource to which you published the model (not the training resource).

## Face detection
Face detection involves identifying regions of an image that contain a human face, typically by returning bounding box coordinates that form a rectangle around the face, like this:

### Face analysis on Azure

Microsoft Azure provides multiple cognitive services that you can use to detect and analyze faces, including:

- Computer Vision, which offers face detection and some basic face analysis, such as returning the bounding box coordinates around an image.
- Video Indexer, which you can use to detect and identify faces in a video.
- Face, which offers pre-built algorithms that can detect, recognize, and analyze faces.

Of these, Face offers the widest range of facial analysis capabilities.

### Face
Face can return the rectangle coordinates for any human faces that are found in an image, as well as a series of attributes related to those faces such as:

- Blur: how blurred the face is (which can be an indication of how likely the face is to be the main focus of the image)
- Exposure: aspects such as underexposed or over exposed and applies to the face in the image and not the overall image exposure
- Glasses: if the person is wearing glasses
- Head pose: the face's orientation in a 3D space
- Noise: refers to visual noise in the image. If you have taken a photo with a high ISO setting for darker settings, you would notice this noise in the image. The image looks grainy or full of tiny dots that make the image less clear
- Occlusion: determines if there may be objects blocking the face in the image

### Azure resources for Face
To use Face, you must create one of the following types of resource in your Azure subscription:

- Face: Use this specific resource type if you don't intend to use any other cognitive services, or if you want to track utilization and costs for Face separately.
- Cognitive Services: A general cognitive services resource that includes Computer Vision along with many other cognitive services; such as Computer Vision, Text Analytics, Translator Text, and others. Use this resource type if you plan to use multiple cognitive services and want to simplify administration and development.

Whichever type of resource you choose to create, it will provide two pieces of information that you will need to use it:

- A key that is used to authenticate client applications.
- An endpoint that provides the HTTP address at which your resource can be accessed.

##  Read API on Azure

The ability to extract text from images is handled by the Computer Vision service, which also provides image analysis capabilities.

### Azure resources for Computer Vision
The first step towards using the Computer Vision service is to create a resource for it in your Azure subscription. You can use either of the following resource types:

- Computer Vision: A specific resource for the Computer Vision service. Use this resource type if you don't intend to use any other cognitive services, or if you want to track utilization and costs for your Computer Vision resource separately.
- Cognitive Services: A general cognitive services resource that includes Computer Vision along with many other cognitive services; such as Text Analytics, Translator Text, and others. Use this resource type if you plan to use multiple cognitive services and want to simplify administration and development.

Whichever type of resource you choose to create, it will provide two pieces of information that you will need to use it:

- A key that is used to authenticate client applications.
- An endpoint that provides the HTTP address at which your resource can be accessed.

### Use the Computer Vision service to read text
Many times an image contains text. It can be typewritten text or handwritten. Some common examples are images with road signs, scanned documents that are in an image format such as JPEG or PNG file formats, or even just a picture taken of a white board that was used during a meeting.

The Computer Vision service provides one application programming interface (APIs) that you can use to read text in images: the Read API.

### The Read API

The Read API uses the latest recognition models and is optimized for images that have a significant amount of text or has considerable visual noise.

The Read API can handle scanned documents that have a lot of text. It also has the ability to automatically determine the proper recognition model to use, taking into consideration lines of text and supporting images with printed text as well as recognizing handwriting.

Because the Read API can work with large documents, it works asynchronously so as not to block your application while it is reading the content and returning results to your application. This means that to use the Read API, your application must use a three-step process:

1. Submit an image to the API, and retrieve an operation ID in response.
2. Use the operation ID to check on the status of the image analysis operation, and wait until it has completed.
3. Retrieve the results of the operation.

The results from the Read API are arranged into the following hierarchy:

- Pages - One for each page of text, including information about the page size and orientation.
- Lines - The lines of text on a page.
- Words - The words in a line of text, including the bounding box coordinates and text itself.

Each line and word includes bounding box coordinates indicating its position on the page.

## Image analysis on Azure

The Computer Vision service is a cognitive service in Microsoft Azure that provides pre-built computer vision capabilities. The service can analyze images, and return detailed information about an image and the objects it depicts.

Azure resources for Computer Vision
To use the Computer Vision service, you need to create a resource for it in your Azure subscription. You can use either of the following resource types:

- Computer Vision: A specific resource for the Computer Vision service. Use this resource type if you don't intend to use any other cognitive services, or if you want to track utilization and costs for your Computer Vision resource separately.
- Cognitive Services: A general cognitive services resource that includes Computer Vision along with many other cognitive services; such as Text Analytics, Translator Text, and others. Use this resource type if you plan to use multiple cognitive services and want to simplify administration and development.

Whichever type of resource you choose to create, it will provide two pieces of information that you will need to use it:

- A key that is used to authenticate client applications.
- An endpoint that provides the HTTP address at which your resource can be accessed.

## Analyzing images with the Computer Vision service
After you've created a suitable resource in your subscription, you can submit images to the Computer Vision service to perform a wide range of analytical tasks.

### Describing an image
Computer Vision has the ability to analyze an image, evaluate the objects that are detected, and generate a human-readable phrase or sentence that can describe what was detected in the image. Depending on the image contents, the service may return multiple results, or phrases.  Each returned phrase will have an associated confidence score, indicating how confident the algorithm is in the supplied description. The highest confidence phrases will be listed first.

### Tagging visual features
The image descriptions generated by Computer Vision are based on a set of thousands of recognizable objects, which can be used to suggest tags for the image.

### Detecting objects
The object detection capability is similar to tagging, in that the service can identify common objects; but rather than tagging, or providing tags for the recognized objects only, this service can also return what is known as bounding box coordinates.

### Detecting brands
This feature provides the ability to identify commercial brands. The service has an existing database of thousands of globally recognized logos from commercial brands of products.

### Detecting faces
The Computer Vision service can detect and analyze human faces in an image, including the ability to determine age and a bounding box rectangle for the location of the face(s). The facial analysis capabilities of the Computer Vision service are a subset of those provided by the dedicated Face Service.

### Categorizing an image
Computer Vision can categorize images based on their contents. The service uses a parent/child hierarchy with a "current" limited set of categories. When analyzing an image, detected objects are compared to the existing categories to determine the best way to provide the categorization. 

### Detecting domain-specific content
When categorizing an image, the Computer Vision service supports two specialized domain models:

- Celebrities - The service includes a model that has been trained to identify thousands of well-known celebrities from the worlds of sports, entertainment, and business.
- Landmarks - The service can identify famous landmarks, such as the Taj Mahal and the Statue of Liberty.

### Optical character recognition
The Computer Vision service can use optical character recognition (OCR) capabilities to detect printed and handwritten text in images.

## receipt analysis on Azure

The Form Recognizer in Azure provides intelligent form processing capabilities that you can use to automate the processing of data in documents such as forms, invoices, and receipts. It combines state-of-the-art optical character recognition (OCR) with predictive models that can interpret form data by:

- Matching field names to values.
- Processing tables of data.
- Identifying specific types of field, such as dates, telephone numbers, addresses, totals, and others.

Form Recognizer supports automated document processing through:

- A pre-built receipt model that is provided out-of-the-box, and is trained to recognize and extract data from sales receipts.
- Custom models, which enable you to extract what are known as key/value pairs and table data from forms. Custom models are trained using your own data, which helps to tailor this model to your specific forms. Starting with only five samples of your forms, you can train the custom model. After the first training exercise, you can evaluate the results and consider if you need to add more samples and re-train.


## Azure resources to access Form Recognizer services
To use the Form recognizer, you need to either create a Form Recognizer resource or a Cognitive Services resource in your Azure subscription. Both resource types give access to the Form Recognizer service.

After the resource has been created, you can create client applications that use its key and endpoint to connect submit forms for analysis.

## Using the pre-built receipt model

Currently the pre-built receipt model is designed to recognize common receipts, in English, that are common to the USA. Examples are receipts used at restaurants, retail locations, and gas stations. The model is able to extract key information from the receipt slip:

- time of transaction
- date of transaction
- merchant information
- taxes paid
- receipt totals
- other pertinent information that may be present on the receipt
- all text on the receipt is recognized and returned as well

Use the following guidelines to get the best results when using a custom model.

- Images must be JPEG, PNG, BMP, PDF, or TIFF formats
- File size must be less than 50 MB
- Image size between 50 x 50 pixels and 10000 x 10000 pixels
- For PDF documents, no larger than 17 inches x 17 inches

## Text analysis

The Language service is a part of the Azure Cognitive Services offerings that can perform advanced natural language processing over raw text.

### Azure resources for the Language service
To use the Language service in an application, you must provision an appropriate resource in your Azure subscription. You can choose to provision either of the following types of resource:

- A Language resource - choose this resource type if you only plan to use natural language processing services, or if you want to manage access and billing for the resource separately from other services.
- A Cognitive Services resource - choose this resource type if you plan to use the Language service in combination with other cognitive services, and you want to manage access and billing for these services together.
### Language detection
Use the language detection capability of the Language service to identify the language in which text is written. You can submit multiple documents at a time for analysis. For each document submitted to it, the service will detect:

- The language name (for example "English").
- The ISO 6391 language code (for example, "en").
- A score indicating a level of confidence in the language detection.

There may be text that is ambiguous in nature, or that has mixed language content. These situations can present a challenge to the service. An ambiguous content example would be a case where the document contains limited text, or only punctuation. For example, using the service to analyze the text ":-)", results in a value of unknown for the language name and the language identifier, and a score of NaN (which is used to indicate not a number).

### Sentiment analysis

The text analytics capabilities in the Language service can evaluate text and return sentiment scores and labels for each sentence. This capability is useful for detecting positive and negative sentiment in social media, customer reviews, discussion forums and more.

### Key phrase extraction
Key phrase extraction is the concept of evaluating the text of a document, or documents, and then identifying the main talking points of the document(s)

### Entity recognition
You can provide the Language service with unstructured text and it will return a list of entities in the text that it recognizes.
The service can also provide links to more information about that entity on the web. An entity is essentially an item of a particular type or a category; and in some cases, subtype, such as those as shown in the following table.

## Recognize and synthesize speech

### speech on Azure

Microsoft Azure offers both speech recognition and speech synthesis capabilities through the Speech cognitive service, which includes the following application programming interfaces (APIs):

- The Speech-to-Text API
- The Text-to-Speech API

### Azure resources for the Speech service
To use the Speech service in an application, you must create an appropriate resource in your Azure subscription. You can choose to create either of the following types of resource:

- A Speech resource - choose this resource type if you only plan to use the Speech service, or if you want to manage access and billing for the resource separately from other services.
- A Cognitive Services resource - choose this resource type if you plan to use the Speech service in combination with other cognitive services, and you want to manage access and billing for these services together.

### The speech-to-text API
You can use the speech-to-text API to perform real-time or batch transcription of audio into a text format. The audio source for transcription can be a real-time audio stream from a microphone or an audio file.

### Real-time transcription
Real-time speech-to-text allows you to transcribe text in audio streams. You can use real-time transcription for presentations, demos, or any other scenario where a person is speaking.

### Batch transcription
Not all speech-to-text scenarios are real time. You may have audio recordings stored on a file share, a remote server, or even on Azure storage. You can point to audio files with a shared access signature (SAS) URI and asynchronously receive transcription results.

### The text-to-speech API
The text-to-speech API enables you to convert text input to audible speech, which can either be played directly through a computer speaker or written to an audio file.

### Speech synthesis voices
When you use the text-to-speech API, you can specify the voice to be used to vocalize the text. This capability offers you the flexibility to personalize your speech synthesis solution and give it a specific character.

## Translate text and speech

### translation in Azure

Microsoft Azure provides cognitive services that support translation. Specifically, you can use the following services:

- The Translator service, which supports text-to-text translation.
- The Speech service, which enables speech-to-text and speech-to-speech translation.

### Azure resources for Translator and Speech

Before you can use the Translator or Speech services, you must provision appropriate resources in your Azure subscription.

There are dedicated Translator and Speech resource types for these services, which you can use if you want to manage access and billing for each service individually.

Alternatively, you can create a Cognitive Services resource that provides access to both services through a single Azure resource, consolidating billing and enabling applications to access both services through a single endpoint and authentication key.

### Text translation with the Translator service
The Translator service is easy to integrate in your applications, websites, tools, and solutions. The service uses a Neural Machine Translation (NMT) model for translation, which analyzes the semantic context of the text and renders a more accurate and complete translation as a result.

#### **Translator service language support**
The Translator service supports text-to-text translation between more than 60 languages. When using the service, you must specify the language you are translating from and the language you are translating to using ISO 639-1 language codes

When using the Translator service, you can specify one from language with multiple to languages, enabling you to simultaneously translate a source document into multiple languages.

### Optional Configurations
The Translator API offers some optional configuration to help you fine-tune the results that are returned, including:

- Profanity filtering. Without any configuration, the service will translate the input text, without filtering out profanity. Profanity levels are typically culture-specific but you can control profanity translation by either marking the translated text as profane or by omitting it in the results.
- Selective translation. You can tag content so that it isn't translated. For example, you may want to tag code, a brand name, or a word/phrase that doesn't make sense when localized.

### Speech translation with the Speech service
The Speech service includes the following application programming interfaces (APIs):

- Speech-to-text - used to transcribe speech from an audio source to text format.
- Text-to-speech - used to generate spoken audio from a text source.
- Speech Translation - used to translate speech in one language to text or speech in another.

You can use the Speech Translation API to translate spoken audio from a streaming source, such as a microphone or audio file, and return the translation as text or an audio stream. This enables scenarios such as real-time closed captioning for a speech or simultaneous two-way translation of a spoken conversation.

## Conversational Language Understanding

Creating an application with Conversational Language Understanding consists of two main tasks. First you must define entities, intents, and utterances with which to train the language model - referred to as authoring the model. Then you must publish the model so that client applications can use it for intent and entity prediction based on user input.

### Azure resources for Conversational Language Understanding
For each of the authoring and prediction tasks, you need a resource in your Azure subscription. You can use the following types of resource:

- Language Service: A resource that enables you to build apps with industry-leading natural language understanding capabilities without machine learning expertise.
- Cognitive Services: A general cognitive services resource that includes Conversational Language Understanding along with many other cognitive services. You can only use this type of resource for prediction.

### Authoring
After you've created an authoring resource, you can use it to author and train a Conversational Language Understanding application by defining the entities and intents that your application will predict as well as utterances for each intent that can be used to train the predictive model.

### Creating intents
Define intents based on actions a user would want to perform with your application. For each intent, you should include a variety of utterances that provide examples of how a user might express the intent.

If an intent can be applied to multiple entities, be sure to include sample utterances for each potential entity; and ensure that each entity is identified in the utterance.

### Creating entities
There are four types of entities:

- Machine-Learned: Entities that are learned by your model during training from context in the sample utterances you provide.
- List: Entities that are defined as a hierarchy of lists and sublists. For example, a device list might include sublists for light and fan. For each list entry, you can specify synonyms, such as lamp for light.
- RegEx: Entities that are defined as a regular expression that describes a pattern - for example, you might define a pattern like [0-9]{3}-[0-9]{3}-[0-9]{4} for telephone numbers of the form 555-123-4567.
- Pattern.any: Entities that are used with patterns to define complex entities that may be hard to extract from sample utterances.

### Training the model
After you have defined the intents and entities in your model, and included a suitable set of sample utterances; the next step is to train the model. Training is the process of using your sample utterances to teach your model to match natural language expressions that a user might say to probable intents and entities.

### Predicting
When you are satisfied with the results from the training and testing, you can publish your Conversational Language Understanding application to a prediction resource for consumption.

Client applications can use the model by connecting to the endpoint for the prediction resource, specifying the appropriate authentication key; and submit user input to get predicted intents and entities. The predictions are returned to the client application, which can then take appropriate action based on the predicted intent.

## Language service and Azure Bot Service 

You can easily create a user support bot solution on Microsoft Azure using a combination of two core services:

- Language service. The Language service includes a custom question answering feature that enables you to create a knowledge base of question and answer pairs that can be queried using natural language input.

Note: The question answering capability in the Language service is a newer version of the QnA Maker service - which is still available as a separate service.

- Azure Bot service. This service provides a framework for developing, publishing, and managing bots on Azure.
### Creating a custom question answering knowledge base
The first challenge in creating a user support bot is to use the Language service to create a knowledge base. You can use the Language Studio's custom question answering feature to create, train, publish, and manage knowledge bases.

### Provision a Language service Azure resource
To create a knowledge base, you must first provision a Language service resource in your Azure subscription.


### Define questions and answers
After provisioning a Language service resource, you can use the Language Studio's custom question answering feature to create a knowledge base that consists of question-and-answer pairs. These questions and answers can be:

- Generated from an existing FAQ document or web page.
- Entered and edited manually.

### Test the knowledge base
After creating a set of question-and-answer pairs, you must save it. This process analyzes your literal questions and answers and applies a built-in natural language processing model to match appropriate answers to questions, even when they are not phrased exactly as specified in your question definitions. 

### Use the knowledge base
When you're satisfied with your knowledge base, deploy it. Then you can use it over its REST interface. To access the knowledge base, client applications require:

- The knowledge base ID
- The knowledge base endpoint
- The knowledge base authorization key

### Build a bot with the Azure Bot Service
After you've created and deployed a knowledge base, you can deliver it to users through a bot.

### Create a bot for your knowledge base
You can create a custom bot by using the Microsoft Bot Framework SDK to write code that controls conversation flow and integrates with your knowledge base. However, an easier approach is to use the automatic bot creation functionality, which enables you create a bot for your deployed knowledge base and publish it as an Azure Bot Service application with just a few clicks.

### Extend and configure the bot
After creating your bot, you can manage it in the Azure portal, where you can:

- Extend the bot's functionality by adding custom code.
- Test the bot in an interactive test interface.
- Configure logging, analytics, and integration with other services.

### Connect channels
When your bot is ready to be delivered to users, you can connect it to multiple channels; making it possible for users to interact with it through web chat, email, Microsoft Teams, and other common communication media.

## Azure Cognitive Search?

Azure Cognitive Search provides the infrastructure and tools to create search solutions that extract data from various structured, semi-structured, and non-structured documents.

### Azure Cognitive Search features
Azure Cognitive Search exists to complement existing technologies and provides a programmable search engine built on Apache Lucene, an open-source software library. It's a highly available platform offering a 99.9% uptime SLA available for cloud and on-premises assets.

Azure Cognitive Search comes with the following features:

- Data from any source: Azure Cognitive Search accepts data from any source provided in JSON format, with auto crawling support for selected data sources in Azure.
- Full text search and analysis: Azure Cognitive Search offers full text search capabilities supporting both simple query and full Lucene query syntax.
- AI powered search: Azure Cognitive Search has Cognitive AI capabilities built in for image and text analysis from raw content.
- Multi-lingual: Azure Cognitive Search offers linguistic analysis for 56 languages to intelligently handle phonetic matching or language-specific linguistics. Natural language processors available in Azure Cognitive Search are also used by Bing and Office.
- Geo-enabled: Azure Cognitive Search supports geo-search filtering based on proximity to a physical location.
- Configurable user experience: Azure Cognitive Search has several features to improve the user experience including autocomplete, autosuggest, pagination, and hit highlighting.

### Identify elements of a search solution

A typical Azure Cognitive Search solution starts with a data source that contains the data artifacts you want to search. This could be a hierarchy of folders and files in Azure Storage, or text in a database such as Azure SQL Database or Azure Cosmos DB. The data format that Cognitive Search supports is JSON. Regardless of where your data originates, if you can provide it as a JSON document, the search engine can index it.

-------------------------

regression, cassification, clustering

dataset features and labels 

## Machine learning Algorithm Cheat Sheet

![Machine learning Algorithm Cheat Sheet](https://learn.microsoft.com/en-us/azure/machine-learning/media/algorithm-cheat-sheet/machine-learning-algorithm-cheat-sheet.png#lightbox)


## presicion vs Acurracy

Precision and accuracy are two ways that scientists think about error. Accuracy refers to how close a measurement is to the true or accepted value. Precision refers to how close measurements of the same item are to each other. Precision is independent of accuracy. That means it is possible to be very precise but not very accurate, and it is also possible to be accurate without being precise.

![Acurracy vs pricision](https://i0.wp.com/wp.stolaf.edu/it/files/2017/06/precsionvsaccuracy_crashcourse.png?resize=579%2C600&ssl=1)

## Confusion Matrix
A confusion matrix is a tabular summary of the number of correct and incorrect predictions made by a classifier. It is used to measure the performance of a classification model. It can be used to evaluate the performance of a classification model through the calculation of performance metrics like accuracy, precision, recall, and F1-score.

![](https://miro.medium.com/max/720/1*3yGLac6F4mTENnj5dBNvNQ.jpeg)

1. A good model is one which has high TP and TN rates, while low FP and FN rates.
2. If you have an imbalanced dataset to work with, it’s always better to use confusion matrix as your evaluation criteria for your machine learning model.

true positive rate(TPR) also called hit rate, sensitivity, or recall 

TPR= TP/P=TP/TP+FN=1-FNR

false positive rate (FPR) also called fallout rate

FPR=FP/N= FP/FP+TN=1-TNR

TPR and FPR together can be combined onto a curve

reciever opñerating characteristic (ROC) curve

AUC area under the curve  of a classifier is equal to the probability that the classifier will rank a randomly chosen positive example higher than a randomly chosen negative example

![](https://miro.medium.com/max/720/1*1MsGU9XT35XcPyyz1OJ6WQ.png)


## Primary metric
- Sperman correlation
- Normqalized root mean squared error
- R2 score
- Normalized mean absolute error

## types of computer vision workload
image calssification
object detection
semantic segmentation boundies of objects
optical character recognition
facial detection and recognition


## Azure Tools

- computer vision service
    - pre trained ml model
    -can recognize over 10000 objects
    - can generate automatic caption for images and tags
    - content moderation for adul, racy or gory content
    - detect faces
    - text recognition

    custom vision service
     - a model that you can build and train
     - classification or object detection
     - upload an existing data set of images and clasess
     - publish the model so that you and other can use it

### face service
- can recognize a human face in an image
- Returns the rectangle coordinates of those 1 or more faces
- can recognize celebrities
- needs to be trained on your own data

face detection, face verification, similar faces, face grouping, identify API, form recognizer (ideal for invoices and receipts)  




- azure cognitive services includes many other services under one umbrella 


## Natural language Workloads on Azure

- key phrase extraction
- entity recognition item categorized by type and subtype
- sentiment analysis score from 0 to 1 1 being positive sentiment
- Language Modeling build your own dictionary for terms in your indutry
- speech recognition( detect an interpret speech) and synthesis (ability to generate spoken output)
- Transaltion support over 60 languages semantic context

### NLP services en azure

- text analytuc service
- language understanding service (LUIS)
    1. uterances: something a user will say
    2. entities:an item to which an uterrance refers
    3. intents: the goal expressed by the user, things your application is able to do
- speech service
    1. text to speech
    2. speech to text
    3. Audio translation
    4. Custom voice models
- Translator text service
    
## Conversational AI workloads on azure

azure bots can operate over the web, email, social media and voice

- webchat bots
- telephone voice menus
- personal digital assistants


### Conversational AI services on azure

- QnA Maker services
- Azure bot services