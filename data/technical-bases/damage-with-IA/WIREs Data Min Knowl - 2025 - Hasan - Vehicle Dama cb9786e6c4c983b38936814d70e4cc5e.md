# WIREs Data Min Knowl - 2025 - Hasan - Vehicle Damage Detection Using Artificial Intelligence A Systematic Literature

# Vehicle Damage Detection Using Artificial Intelligence: A Systematic Literature Review

Md Jahid Hasan | Cong Kha Nguyen | Yee Ling Boo | Hamed Jahani | Kok-Leong Ong

RMIT Enterprise AI and Data Analytics Hub, RMIT University, Melbourne, Victoria, Australia

Correspondence: Md Jahid Hasan [(md.jahid.hasan@rmit.edu.au](mailto:md.jahid.hasan@rmit.edu.au))

Received: 1 September 2024 | Revised: 30 April 2025 | Accepted: 26 May 2025

Associate Editor: Tianrui Li | Editor-in-Chief: Witold Pedrycz

Funding: This work was supported by RMIT Grant, PRJ00000694.

Keywords: artificial intelligence | deep learning | image processing | systematic literature review | vehicle damage detection

#### Abstract

Automating vehicle damage detection is essential for automotive industry applications like insurance claims, online sales, and repair cost estimates, addressing the labor-intensive, time-consuming, and error-prone nature of current manual inspections. This systematic literature review explores the use of artificial intelligence (AI), particularly deep learning-based algorithms, to improve the accuracy and efficiency of damage detection under dynamic and challenging conditions specific to the requirements of our industry partners. The review is structured around five key research questions and includes extensive empirical evaluations to identify gaps and challenges in existing methods. Findings reveal significant potential for AI to automate and enhance the damage detection process but also highlight areas requiring further research and development. The review discusses these gaps in detail, providing a comprehensive foundation for future work in this field. Furthermore, the review findings are intended to guide both our research and the broader research community in advancing the practical application of AI for vehicle damage assessment. The insights gained from this review are crucial for developing robust AI solutions that can operate effectively in real-world scenarios, ultimately improving operational efficiency and customer experience in the automotive industry.

## 1 | Introduction

The used-car industry is experiencing rapid growth worldwide, with millions of used cars sold annually. This growth is expected to continue as post-pandemic supply chain constraints have increased the demand for used cars to bridge the supply gap (Bloomberg 2021). According to a report in (Allied Market Research 2023), the industry is predicted to grow at a compound annual growth rate (CAGR) of 6.5% between 2022 and 2031, reaching a market value of $\$ 2.7$ trillion by 2031. While the opportunities and rewards are significant, trading used cars online presents challenges. In the past, to acquire used cars from prospective sellers, dealers needed to offer attractive prices to the sellers by considering mileage, condition, and damage of vehicles. This process can be complex, timeconsuming, and labor-intensive. Specialized inspectors often need to physically inspect the car to make an assessment. This means inspectors must travel to multiple locations, which is costly to scale, especially in geographically large countries. Furthermore, if the seller disputes an assessment, all

[1](about:blank#fn1)parties end up wasting time and valuable resources (Balcı and Artan 2021; Sruthy et al. 2021; Harshani and Vidanage 2017). Additionally, buyers have limited opportunities to inspect the car in an online environment. Hence, they depend on the seller/dealer supplied photos to make a decision (Lin et al. 2021). This leads to risks such as disputes, unsatisfactory experiences, or legal issues. While interior damages to components such as the chassis or engine are also important in used car inspections, our research focuses solely on exterior vehicle damages from a visual perspective. Interior damages are considered outside the scope of this research. Hereafter, references to car or vehicle damages pertain exclusively to exterior damages.

An online solution, where sellers can upload photos of the usedcars for assessment, can address distance issue. However, manual assessment is slow and inefficient. To achieve scalability and to provide “round-the-clock” assessment expected in an online environment, artificial intelligence (AI), the specific branch of machine learning is seen as the solution. AI has shown promise in a number of areas, including the identification of vehicle (Parhizkar and Amirfakhrian 2022b; Zhang, Li, et al. 2020; Qu and Chen 2021). The premise is simple: if AI can accurately assess damage from photos of a used-car, we will have an efficient online used-car trading platform that addresses the concerns among sellers, dealers and buyers. The solution will (i) give the seller a degree of certainty on whether his or her expected selling price can be fulfilled; (ii) will improve the seller’s experience since the initial valuation by AI can take place anytime and anywhere; (iii) give confidence to dealers that the inspection is likely to result in a deal, saving valuable time and resources should seller progress to the next step following the AI’s initial assessment; (iv) deliver confidence to all parties that the car’s condition is objectively assessed; and (v) ensure that accurate vehicle conditions, such as damage, are reflected in the online market place for the buyer.

In addition to the benefits mentioned, an AI solution could offer several other applications, such as online self-managed claims management with insurance companies (Rababaah 2022); online quotation for car repair costs; or automatic generation of car descriptions that include important information to facilitate reporting or online sales. Such a solution, where photos can be easily taken from a mobile phone and analyzed by AI, will be much more scalable than hiring additional inspectors for physical inspections. In fact, AI would be able to analyze vast amounts of images or videos submitted by prospective sellers anywhere and anytime (Zhang, Chang, et al. 2020; Sharma et al. 2019). Therefore, this brings us to the question of whether such an AIbased solution exists?

Recent advances in deep learning suggest the plausibility of achieving a feasible solution for assessing used-car conditions, which led us to systematically undertake capturing the current state-of-the-art. We are keen to ascertain if there is sufficient research to achieve this in practice, given the specific constraint of the use-case scenario discussed above. While we are aware of methods that may provide good accuracy in car condition assessments, these methods often require a combination of bespoke hardware or specialized setups to achieve the required precision. This limitation restricts accessibility for prospective sellers and consequently does not achieve the desired outcomes for sellers, buyers, and dealers. From an AI or technical perspective, an extra layer of challenge is added to damage detection when photos provided or listed by sellers have varying camera settings, such as different angles, overlapping damages, light settings, etc., or when images are derived from CCTV compression or videos. In the worstcase scenario, sellers might be unable to upload good-quality images or videos (Wei et al. 2019; Jayawardena 2013; Dimou et al. 2016). Figure 1 illustrates the difficulties that AI models encounter when handling images under such challenging circumstances, leading to data quality issues like imbalanced datasets and subsequently impacting the accuracy of AI models (He and Garcia 2009). Additionally, recognizing the damage and its severity is crucial for the damage claims process (Harshani and Vidanage 2017). As a result, our review seeks to answer several key questions to advance research in this space, particularly focusing on:

- What research is available on the use of AI-based computer vision that can help to identify the condition of a used car? Specifically, our industry partner is keen to identify conditions such as scratches, dents, or a combination of these damages given that they have a significant influence on the value of a car. We are also interested in learning from the literature on how well the method may stack up against conventional techniques.
- Can AI-based computer vision adequately detect damages on a car through photos submitted by prospective

![](WIREs%20Data%20Min%20Knowl%20-%202025%20-%20Hasan%20-%20Vehicle%20Dama/images4e7adf96-fdc0-4554-bc27-57f75855a304-02_488_1753_2015_157.jpg)

FIGURE 1 | Sample of images under challenging circumstances: (a) low light, (b) reflection, (c) overlapping damages, (d) illumination.

TABLE 1 | Table of abbreviations.
| Abbreviation | Definition | Abbreviation | Definition |
| :— | :— | :— | :— |
| AI | Artificial intelligence | YOLO | You Only Look Once |
| CNN | Convolutional neural network | SVM | Support vector machine |
| GAN | Generative adversarial network | SLR | Systematic literature review |
| CTL | CNN-based transfer learning | R-CNN | Region-based convolutional neural network |
| S-CNN | Shallow conventional neural network | MARS | Mask attention refinement with sequential quadtree nodes |
| TCLF | Traditional classifier | SSD | Single shot multibox detector |
| DL | Deep learning | ML | Machine learning |
| MRCNN | Mask-RCNN | | |

sellers from a mobile phones? We want to know if current AI algorithms are sufficiently robust to various environmental variables that can arise in our use case. Taking pictures from a mobile phone app means a damage on the car will look different because of the (i) angle, (ii) lighting conditions, (iii) reflection on the body of the car, and so on.

- Do we have the data to develop a good AI model? To achieve the detection accuracy in a highly dynamic environment, we will require training data from a large range of vehicles, damage types, environmental conditions (such as photos taken in different lighting conditions), as well as angles and distances of photos taken. Data quality will be important in this situation, as the wide-ranging scenarios mean that we are likely to be dealing with a range of issues, such as an imbalanced dataset that will impact the model’s performance (He and Garcia 2009). Without this comprehensive dataset, the solution is likely to be less than ideal.
- How are the models evaluated to achieve operational viability of such a solution? In practice, many factors will need to be addressed to guarantee a positive experience for the seller and buyer (Dimou et al. 2016; Jayawardena 2013; Wei et al. 2019). As illustrated in Figure 1, we will need to look beyond standard evaluations to understand how well a model performs on other factors like the accuracy of locating a damage, detecting the severity of a damage, and performance under variations to lighting, camera angle, image quality, etc. This review will be an important first step to map the objective assessments done prior.
- What are the current strengths and limitations of current AI-based techniques? Last but not least, we are interested to understand the key challenges that earlier works faced in developing solutions similar to ours. In doing so, we will be able to have the insights we need to undertake any further development to achieve a solution that meets our use-case outcomes.

A comprehensive discussion and analysis of these questions based on the literature review can be found in Section 5. The rest of this paper is organized as follows. Next, Section 2 presents key terminologies and context related to vehicle damage. In Sections 3 and 4, we report the results of our systematic literature review (SLR), including our conclusions for the research questions above. Then, in Section 5, we present the gaps that we have identified. These gaps are drawn from both our review of the literature and the empirical evaluations of current techniques. We found some significant gaps that will need to be addressed before a feasible solution in practice can be achieved. We discuss these as a set of steps to be taken as future works before we conclude this paper in Section 6. Furthermore, the abbreviations in use are exhibited in Table 1.

## 2 | Vehicle Damage: Key Terminologies and Context

While the questions we pose appear to be straightforward at first glance, a deeper understanding of what constitutes “vehicle damage” will help readers better appreciate why this is a challenging problem and why existing state-of-the-art in the literature will require deeper investigation of the AI methods proposed to effectively detect damage under a variety of conditions. It is these nuances involved that we need to overcome if any AI-based solutions are to be suitable in an operational context.

Vehicle exterior damage could appear in many different forms, such as dents, scratches, cracks, rust, and more as shown in Figure 2 (Jameel et al. 2021). One of the most typical forms of damage is dents, which can be brought on by crashes, hailstorms, or other impacts. They can be small dings or big, deep dents, both of which need extensive repair, ranging in size and severity. Another frequent type of external damage is scratching, which usually results from contact with things like trees, other cars, or even shopping trolleys. Cracks are one kind of damage that can happen to a car’s windows, windscreen, or other glass parts. They can range in severity from minor cracks to more serious ones that necessitate a full replacement of the glass and can be brought on by impacts or temperature changes. Another usual type of external damage is rust, which can develop as a result of moisture or salt exposure. Other sorts of external damage might include fading or peeling of the vehicle’s paint, as well as damage to exterior

![](WIREs%20Data%20Min%20Knowl%20-%202025%20-%20Hasan%20-%20Vehicle%20Dama/images4e7adf96-fdc0-4554-bc27-57f75855a304-04_1213_1303_108_383.jpg)

FIGURE 2 | Sample of damage images, (a) scratch, (b) dent, (c) cracks, (d) rust.

fixtures like bumpers, mirrors, or headlights (van Ruitenbeek and Bhulai 2022). Ultimately, a vehicle’s external damage should be thoroughly assessed throughout the automobile valuation process since it may have a substantial influence on a vehicle’s worth and safety.

Vehicle damage can also be broken down into three severity categories: minor, moderate, and major, as illustrated in Figure 3 (Bandi et al. 2021). Small scratches, dents, and chips that have little impact on the car’s functionality or appearance are considered minor damage. On the other hand, moderate damage, such as larger dents, broken parts, or damage to multiple areas of the car, is considered moderate damage. Major damage is defined as considerable structural or mechanical damage that compromises the vehicle’s overall durability, safety, or worth. This type of damage can be much more difficult and expensive to repair and may even result in the vehicle being deemed a total loss (Kyu and Woraratpanya 2020). These classifications are general descriptors frequently used in existing studies but are not based on standardized criteria, which vary widely across research. Therefore, the degree of damage is a crucial issue to take into account when valuing an automobile since it may have a big influence on the price of the vehicle as well as the price of the repairs required to return it to its pre-damaged state.

In recent years, AI has experienced a significant revolution, leading us into a new era of technological progress (Dwivedi, Hughes, et al. 2021). One area where computer-based analysis has become increasingly valuable is in identifying car damage (Ünal et al. 2022; Tian and Han 2022). The ability of AI-based algorithms to examine photos of the car quickly-often considerably quicker than a human inspector-is one of the main advantages of utilizing them for automotive damage identification. AI in car damage assessment involves several key processes:

- Classification: AI-based algorithms categorize car damage into various types like scratches, dents, and cracks. This classification is crucial for quickly and accurately assessing the damage type, which aids in estimating repair costs and handling insurance claims efficiently (Harshani and Vidanage 2017; Dhieb et al. 2019).
- Detection: Object detection algorithms identify the damaged areas in vehicle images and classify them into various categories. This step is not only helpful for recognizing the types of damages as classification methods but also essential for capturing all visible damage, ensuring that no issues are missed, which could affect the car’s performance or safety (AI Machine Learning 2023).
- Segmentation: Through segmentation algorithms, AI breaks down the car’s image into smaller regions to isolate and examine specific damage areas. This refined analysis helps in providing a more precise evaluation of the damage’s extent and severity, which is vital for formulating effective repair plans and accurate cost estimates (AI Machine Learning 2023).

![](WIREs%20Data%20Min%20Knowl%20-%202025%20-%20Hasan%20-%20Vehicle%20Dama/images4e7adf96-fdc0-4554-bc27-57f75855a304-05_1124_1206_107_431.jpg)

FIGURE 3 | Severity level of dent damage, (a) no damage, (b) minor, (c) moderate, (d) major.

The rapid development of AI-based technologies has garnered significant interest from the industry, academia, and business, leading to numerous revolutionary advancements. e-commerce is one such industry that leverages AI extensively for various tasks such as generating a vast customer base, understanding customer needs and buying behaviors, recommending products to customers, etc. (Fedorko et al. 2022; Alareeni et al. 2021).

## 3 | Methodology of Research

This SLR was conducted to provide a comprehensive overview of current research on vehicle damage detection using AI, with a focus on deep learning-based algorithms. Following methodologies similar to those used in systematic reviews by Khare et al. (2024) on AI in cervical cancer detection, Núñez et al. (2024) on machine learning applications in tourism, and Heidari et al. (2024) on deepfake detection using deep learning, this review seeks to capture the breadth of AI’s impact in the automotive industry. The methodology is divided into two main sections: the scope of the review and the criteria for article selection.

## 3.1 | Scope of Review

In this section, we specifically explore the latest advancements in AI technologies for car damage detection, focusing on their applications in car valuation, vehicle sharing, rental, and repair services. A SLR analysis of the existing literature in this area can shed light on current research and point out areas that require more study. Additionally, the SLR helps us identify any research gaps or unanswered questions in the field. By pinpointing these gaps, we can focus our efforts on addressing them through our research, whether it involves exploring novel algorithms, considering new data sources, or investigating the integration of AI in the e-commerce context. Specifically, this SLR was conducted in accordance with the Preferred Reporting Items for Systematic Reviews and MetaAnalyses (PRISMA) criteria (Moher et al. 2009). In summary, this review aims to summarize existing research, highlight weaknesses to address through further studies, and identify new research areas within the domain of AI for vehicle damage detection.

## 3.2 | Article Selection Method

We selected four major online scientific databases-Scopus, ACM Digital Library, ProQuest, and IEEE Xplore as they are the most common resources for reviewing the latest work. This selection is based on our identification of the research problems, challenges, scope, and goals. In the initial step of article extraction, we employed selected search keywords: car synonyms (car OR cars OR vehicle OR vehicles OR automobile OR automobiles) and damage synonyms (damag* OR deteriorat* OR brok* OR break*OR wreak* OR assess*) to identify relevant articles. In addition, irrelevant terms such as “train,” “bridge,” “carbon,” “autonomous,” “electric,” “battery,” and “behavior” are excluded from search. Further, we narrowed down our inquiry to only English-language articles published

![](WIREs%20Data%20Min%20Knowl%20-%202025%20-%20Hasan%20-%20Vehicle%20Dama/images4e7adf96-fdc0-4554-bc27-57f75855a304-06_1014_1742_116_163.jpg)

FIGURE 4 | Methodology of systematic literature review.

during the timeframe from January 1, 2014, to June 1, 2024. In addition, the article searching was limited to document types such as conferences and journals. The methodology of conducting SLR is shown Figure 4.

After applying the same narrow down process to each of the four databases, we found 373, 696, 346, and 52 articles from ProQuest, Scopus, IEEE, and ACM, respectively. Then, we identified 920 unique articles after removing duplicates accumulated from all four databases. These 920 articles underwent further manual skimming based on their titles and abstracts, resulting in 83 articles for full-text review. During the full-text review, we closely examined each article, paying special attention to the dataset used, the depth of information provided, and the context of the paper within the scope of our research. After the full-text review, we excluded an additional 28 articles, leaving 55 selected for our literature review analysis.

We analyzed the 55 articles to summarize the existing work, highlight research contributions and weaknesses, considering various aspects such as dataset preparation, image processing, model construction, and evaluation. Furthermore, we proposed a framework for analyzing the existing literature related to vehicle damage detection, as depicted in Figure 10. In the following sections, we will describe the results of the analysis conducted over the selected 55 papers.

## 4 | Article Analysis

In this section, we review selected articles to comprehend the prevailing research trends and applications in the field of vehicle damage detection. Furthermore, we propose a standardized framework for developing robust vehicle damage detection models. Finally, we analyze challenges and gaps, as well as future directions in this field.

## 4.1 | Keyword and Title

The systematic review of 55 selected papers on vehicle damage detection using AI reveals key themes and trends in this research area. The word cloud generated from the titles of these papers highlights frequently occurring terms such as “Car Damage,” “Deep learning,” and “Damage detection” as shown in Figure 5.

Figure 6 shows the top 10 keywords over the years, making it more insightful with respect to changes in the research landscape. It can also be significantly noted that there is a peak in the years 2021 and 2023, with the most popular keywords being “Deep learning,” “Insurance,” and “Damage detection”. This indicates the pace at which improvements in AI technologies are occurring and how they are increasingly being adapted to practical applications. Furthermore, many mentions of keywords like “Transfer learning” and “Object detection” demonstrate the sophistication adopted through AI techniques for enhancing damage detection systems. Taken together, these results demonstrate that the role of AI-driven solutions in vehicle damage detection is increasingly becoming more significant and can be considerably important for the insurance industry and other interconnected fields.

## 4.2 | Research Publication Trend

The analysis of the publication trend of the 55 selected papers showed an interesting pattern. The majority of the papers were

![](WIREs%20Data%20Min%20Knowl%20-%202025%20-%20Hasan%20-%20Vehicle%20Dama/images4e7adf96-fdc0-4554-bc27-57f75855a304-07_603_1195_111_438.jpg)

FIGURE 5 | Title word cloud.

![](WIREs%20Data%20Min%20Knowl%20-%202025%20-%20Hasan%20-%20Vehicle%20Dama/images4e7adf96-fdc0-4554-bc27-57f75855a304-07_657_1195_836_437.jpg)

FIGURE 6 | Top 10 keywords over the years.

published within the last 5 years, with the earliest paper dating back to 2017 as shown in Figure 7. The analysis of the publication trend shows that the number of publications is stepping up constantly, with remarkable peaks in 2021 and 2023 continuing into 2024, reflecting increased research activity and an area’s interest. This suggests that the topic of using AI for accurately detecting damage in a vehicle to measure its value and repair cost has gained significant attention in recent years. In terms of publication type, the final set of papers selected for the review comprised both conference papers and journal articles. The conference proceedings were the most prevalent, accounting for 44 out of 55 papers (80%).

## 4.3 | Application Areas

In the literature review, various application areas of AI-based vehicle damage detection have been identified. In our selected paper, we found that approximately 75% of the studies focus on the insurance claims process. For instance, Zhu et al. (2019) use it for insurance claims in case of car damage or accidents, while Khan et al. (2021) utilize it for processing claims by insurance companies or recording accidents by the police department. Others concentrate on car-sharing businesses, automotive dealerships, and car rentals (Rababaah 2022). Besides, some authors also use it to measure vehicle repair costs (Dwivedi, Malik, et al. 2021). The percentage of these applications is shown in Figure 8, with insurance claims having the largest representation (75%), followed by car sharing (13.3%), and vehicle assertion (3.3%).

## 4.4 | Vehicle Damage Detection Framework

Figure 10 presents a comprehensive framework for car damage recognition, highlighting the key stages and methodologies involved. The process begins with dataset collection, which consists of gathering images categorized by the types of damage and severity levels. Next, the image preprocessing stage employs various techniques to enhance image quality and prepare the data for analysis. Following preprocessing, the modeling methods stage incorporates traditional and deep learning approaches within the AI framework to classify, detect, and segment car damage. Finally, the evaluation metrics stage assesses

![](WIREs%20Data%20Min%20Knowl%20-%202025%20-%20Hasan%20-%20Vehicle%20Dama/images4e7adf96-fdc0-4554-bc27-57f75855a304-08_679_1200_113_435.jpg)

FIGURE 7 | Publication trend.

![](WIREs%20Data%20Min%20Knowl%20-%202025%20-%20Hasan%20-%20Vehicle%20Dama/images4e7adf96-fdc0-4554-bc27-57f75855a304-08_845_847_894_158.jpg)

FIGURE 8 | Application areas.

the model’s performance using various metrics. This structured approach ensures a thorough analysis and accurate detection of car damages.

### 4.4.1 | Data Collection

The analysis of dataset availability in the selected SLR papers reveals that 74.5% of the datasets used are private, while only 25.5% are publicly accessible. The authors of the 55 reviewed papers obtained their data from a range of sources, including external organizations, personal devices, online platforms, and unidentified origins. Table A1 in Appendix A provides a summary of the most commonly used datasets, detailing their volume, diversity, types of damage covered, and the quality of annotations. Data from external sources accounted for 31% of the total, including contributions from private organizations (Chua et al. 2021; Jameel et al. 2021; Thonglek et al. 2021) as well as publicly available repositories (Qu and Chen 2021; Wang et al. 2023). On the other hand, information obtained from search engines such as Google and Bing is classified as internet-sourced data, which accounted for 47% (Sruthy et al. 2021; Bandi et al. 2021). Another 13% came from data personally collected by the authors using their own cameras or mobile devices-referred to as (Zhang, Chang, et al. 2020; Balcı and Artan 2021). The remaining 9% could not be definitively sourced and are categorized as “unknown” (Zhu et al. 2019) as shown in Figure 9.

Publicly available datasets are essential for gathering a wide range of data from different sources that represent various types and levels of damage. However, we have discovered that out of 55 papers, 14 datasets are publicly available, while the remaining datasets are private and not accessible for use in other research. One of the most popular public datasets was published in 2023 by an author named carDD (Wang et al. 2023). The carDD dataset was used five times by some papers from our selected papers (Taspan et al. 2023; Mishra and Kamal 2024; Jin et al. 2023). The remaining public dataset used different Kaggle sources (Mahyoub et al. 2023; Setyawan et al. 2023). Table 2 presents a curated list of publicly accessible datasets, including concise descriptions, direct download links, and corresponding references identifiers.

### 4.4.2 | Data Preprocessing

In the existing literature, various data preprocessing approaches that incorporate AI techniques have been found to enhance the accuracy of vehicle damage detection. These preprocessing techniques, as illustrated in Figure 10, are crucial for refining the quality of data before it is analyzed, thereby enhancing the performance of AI algorithms. As shown in Figure 10, data preprocessing serves as a critical first stage in the detection pipeline, ensuring that image data meets quality standards for accurate analysis and model training. Barari et al. (2020) employed the Hough Line Transform for precise line detection within images, which is particularly useful for identifying structural damage.

FIGURE 9 | Data gathering sources.
The Median filter is another technique used to reduce noise while preserving edges, which is essential for maintaining the integrity of the damage features (Khan et al. 2021).

For deep learning-based methods, various data augmentation techniques have been employed to increase the size of the data sample and address data imbalance during AI model training. For instance, Mahyoub et al. (2023) used a deep convolutional generative adversarial network (DCGAN) to generate synthetic images, thereby creating a more balanced training set. In addition to GAN-based techniques, other methods such as image rotation and flipping, scaling and cropping, color jittering, noise injection, elastic transformations, and Mixup or Cutout techniques are also commonly employed (Patil et al. 2017; Sruthy et al. 2021; Khan et al. 2021). Chua et al. (2021) utilized techniques such as rotation, shear-range, zoom, and horizontal flipping (H-flip) to diversify the dataset, thereby enhancing model robustness by introducing variability and simulating real-world conditions.

### 4.4.3 | Feature Extraction

Features represent the different variables or properties of the data that a model uses to make predictions or decisions. Feature extraction in AI is the process of identifying and selecting the most relevant features, such as edges, textures, or shapes within an image to be used in a predictive model.

Before deep learning comes, traditional feature extraction methods such as scale-invariant feature transform (SIFT) and local binary pattern (LBP) are used to find dominant features from car damage photos (Parhizkar and Amirfakhrian 2022a; Harshani and Vidanage 2017). Figure 11 displays features of car damage images by LBP Parhizkar and Amirfakhrian (2022a) used the Kirsch mask method, which is particularly effective for capturing fine texture details and enhancing edge detection, providing better texture representation. This technique is useful for identifying specific damage characteristics in vehicle images.

Deep learning has revolutionized feature extraction by identifying more sophisticated relevant features directly from raw data (Archana and Jeevaraj 2024). Unlike traditional methods that extract simple features like edges of objects, deep learning models such as convolutional neural networks (CNNs) excel in uncovering intricate patterns and hierarchical structures within data. CNNs capture spatial hierarchies in images using convolutional and pooling layers, which condense high-dimensional inputs into meaningful representations by extracting features at various scales (Li, Liu, et al. 2021). For instance, the initial layers might learn basic edge patterns, while subsequent layers combine these features to identify more complex objects (Lin et al. 2017). CNNs provide both high-level and low-level features, representing richer information compared to traditional methods, as shown in Figure 12.

In the context of car damage detection, CNNs are particularly effective. They can be trained on extensive datasets of car images, learning to recognize various types of damage such as dents, scratches, and cracks. By extracting features at multiple levels of abstraction, CNNs enhance the accuracy and efficiency of damage detection processes, making them a powerful tool for this application (Jalili et al. 2024; Rababaah 2023). Tian and Han (2022) utilized various deep CNNs, including VGG-16, VGG-19, Inception-V3, and SqueezeNet, for feature extraction in automobile damage assessment. These models were pre-trained on the ImageNet dataset and fine-tuned with specific car damage data.

### 4.4.4 | Modeling Methods

In this modeling stage as shown in Figure 13, we explore processes to use extracted features. We classify modeling approaches into two primary categories: traditional machine learning methods and deep learning-based techniques. Each approach offers unique advantages and is suited to different aspects of the damage assessment pipeline. For each category, we further group them into three key applications: classification, detection, and segmentation. Classification identifies the type of damage, detection pinpoints the location of damaged regions, and segmentation provides pixel-level precision, outlining exact damage areas. As illustrated in Figure 10, these components work in sequence to provide a layered and complete assessment of vehicle damage.
4.4.4.1 | Traditional Methods. Traditional machine learning methods rely heavily on handcrafted feature extraction as above traditional feature extraction methods, where domain-specific knowledge is used to define visual descriptors that capture relevant characteristics from car damage images. Extracted features are typically input into traditional classifiers (TCLF) such as support vector machines (SVMs), decision trees, random forests, or $k$-nearest neighbors ( $k$-NN), which are then used to categorize images into predefined damage classes (Kumar et al. 2023). Although traditional methods have shown some effectiveness in simple classification tasks, such as distinguishing between damaged and undamaged vehicles

TABLE 2 | Publicly available datasets for vehicle damage detection from 55 selected papers.
| Dataset name | Description | Access link ${ }^{\mathbf{a}}$ | References |
| :— | :— | :— | :— |
| CarDD | Contains 4000 high-resolution images with over 9000 annotated instances across six damage categories. Designed for classification, detection, segmentation, and salient object detection tasks. | [https://cardd-ustc](https://cardd-ustc/). github.io/ | Jin et al. (2023); Wang et al. (2023); Taspan et al. (2023); Mishra and Kamal (2024) |
| COCO car damage detection dataset | Comprises 80 car images with annotated damaged parts, formatted in COCO style. Suitable for object detection tasks. | [https://www.kaggle.com/datasets/lplenka/coco-car-damage-detection-dataset](https://www.kaggle.com/datasets/lplenka/coco-car-damage-detection-dataset) | Mahyoub et al. (2023); Setyawan et al. (2023); Thomas et al. (2023) |
| Stanford cars | Contains 16,185 images of 196 classes of cars, annotated with make, model, and year. Useful for fine-grained image classification tasks in the automotive domain. | [https://datasets.activeloop.ai/docs/ml/datasets/stanford-cars-dataset/](https://datasets.activeloop.ai/docs/ml/datasets/stanford-cars-dataset/) | Qu and Chen (2021); Bandi et al. (2021) |
| Car damage detection | A collection of car images labeled for damage detection tasks. Includes annotations for object detection and classification of damaged areas. | [https://www.kaggle.com/datasets/anujms/car-damage-detection](https://www.kaggle.com/datasets/anujms/car-damage-detection) | Reddy et al. (2022); Rababaah (2023); Thomas et al. (2023) |
| COCO annotated car damage detection | Contains car damage images annotated in COCO format. Suitable for training object detection models on automotive damage. | [https://www.kaggle.com/datasets/ramsikalia/coco-annotated-dataset-car-damage-detection](https://www.kaggle.com/datasets/ramsikalia/coco-annotated-dataset-car-damage-detection) | Ramazhan et al. (2023) |
| VEHIDE dataset | A large-scale dataset consisting of 13,945 high-resolution images with over 32,000 annotated damage instances across various categories. Developed for segmentation and detection of visual automotive damage, it includes detailed annotation, collection, and selection methodology. | [https://www.kaggle.com/datasets/hendrichscullen/vehide-dataset-automatic-vehicle-damage-detection](https://www.kaggle.com/datasets/hendrichscullen/vehide-dataset-automatic-vehicle-damage-detection) | Huynh et al. (2023) |
| Car damage severity dataset | Contains images of damaged vehicles categorized by severity levels: minor, moderate, and severe. The dataset includes 1509 labeled images designed for classification tasks in car damage assessment. | [https://www.kaggle.com/datasets/prajwalbhamere/car-damage-severity-dataset](https://www.kaggle.com/datasets/prajwalbhamere/car-damage-severity-dataset) | Amodu et al. (2024) |

${ }^{\mathrm{a}}$ All links accessed on April 13, 2025.
or identifying basic types of surface damage, their capabilities are largely limited to these scenarios. Table 3 provides a summary of traditional methods. No studies have been found that apply these techniques to more advanced tasks such as damage detection and segmentation. These tasks require precise localization and boundary delineation of damaged regions, which traditional methods struggle to achieve due to their reliance on low-level features and limited spatial context.

![](WIREs%20Data%20Min%20Knowl%20-%202025%20-%20Hasan%20-%20Vehicle%20Dama/images4e7adf96-fdc0-4554-bc27-57f75855a304-11_681_1749_114_158.jpg)

FIGURE 10 | Overview of vehicle damage detection framework.

![](WIREs%20Data%20Min%20Knowl%20-%202025%20-%20Hasan%20-%20Vehicle%20Dama/images4e7adf96-fdc0-4554-bc27-57f75855a304-11_388_1747_906_160.jpg)

FIGURE 11 | Example of traditional feature extraction using LBP.

![](WIREs%20Data%20Min%20Knowl%20-%202025%20-%20Hasan%20-%20Vehicle%20Dama/images4e7adf96-fdc0-4554-bc27-57f75855a304-11_559_1727_1449_183.jpg)

FIGURE 12 | Example of deep learning-based feature extraction using CNNs.

4.4.4.2 | Deep Learning Methods. On the other hand, deep learning methods can automatically learn features and perform classification directly from raw data (LeCun et al. 2015). Unlike traditional methods, which require separate phases for feature extraction and classification, deep learning-based models compose both processes into end-to-end models, as illustrated in Figure 14. Extracted feature vectors can be used in various ways for classification, such as incorporating fully connected layers followed by a softmax layer or a sigmoid function (Chen et al. 2021). The fully connected layers produce logits, which the softmax layer then converts into class probabilities, enabling the assignment of images to the classes with the highest probabilities. This approach is ideal for multi-class classification tasks. For binary classification tasks, the sigmoid function is typically applied to the logits, generating an independent probability score for each class (Alzubaidi et al. 2021). In car damage image classification, CNNs have demonstrated impressive accuracy in categorizing images into various classes transfer learning

![](WIREs%20Data%20Min%20Knowl%20-%202025%20-%20Hasan%20-%20Vehicle%20Dama/images4e7adf96-fdc0-4554-bc27-57f75855a304-12_729_1294_111_387.jpg)

FIGURE 13 | Modeling methods of car damage detection using AI.

TABLE 3 | Summary of traditional approaches.
| References | Application area | Methods | Contribution | Future direction |
| :— | :— | :— | :— | :— |
| Harshani and Vidanage (2017) | Insurance claim | TCLF | Predicted vehicle damage severity and cost using image processing and computational intelligence, achieving high accuracy | Include vehicle make, model, color, and year for specificity. |
| Kumar et al. (2023) | Insurance claim | TCLF | Achieved high accuracy and F1-score in predicting insurance amounts based on damage levels | Incorporate real- time data, use image recognition for damage assessment. |

![](WIREs%20Data%20Min%20Knowl%20-%202025%20-%20Hasan%20-%20Vehicle%20Dama/images4e7adf96-fdc0-4554-bc27-57f75855a304-12_931_1749_1529_157.jpg)

FIGURE 14 | Comparison of traditional machine learning models (a), which rely on manual feature extraction, with contemporary deep learning architectures (b), which automate both feature extraction and training processes through an end-to-end learning framework.

(CTL) is often utilized by adapting pre-trained CNNs such as ResNet, DenseNet, Inception, and VGGNet for specific classification tasks (Sruthy et al. 2021; Ünal et al. 2022). Following this, some studies explored shallow CNN (S-CNN) architectures with fewer layers to create lightweight models suitable for deployment on resource-constrained devices (Sharma et al. 2019). Although S-CNNs offer faster inference, they generally trade-off some accuracy compared to deeper models enhanced through transfer learning.

Additionally, CNN-generated features can be utilized by TCLF such as SVMs, decision trees, or $k$-NN (Tian and Han 2022). By integrating CNNs with these classifiers, the robust feature extraction capabilities of CNNs are complemented by the traditional methods’ strengths, resulting in powerful and flexible classification systems (Patil et al. 2017). A summary of the classification approaches employed in the reviewed studies is presented in Table 4.

Generally, deep learning-based object detection combines extracted features from deep learning models like CNNs with advanced algorithms for object localization and then classification. For example, algorithms like region of interest (RoI) (Girshick et al. 2014) and region proposal networks (RPNs) (Ren et al. 2015) generate region proposals from CNN feature maps, aiding in accurate object localization. These regions are then classified into categories using methods similar to those employed in the deep learning-based classification mentioned above. Several typical deep learning-based methods are commonly used in car damage detection, such as YOLO, SSD, and RetinaNet. (Thomas et al. 2023) proposes a two-layered approach where a CNN is first used to filter out undamaged images, and then an object detection model categorizes the damage into specific types such as scratches, dents, glass shatter, and smashes. Another study leverages YOLOv8 and ResNet-50 for a sophisticated vehicle damage detection system that integrates damage segmentation with repair management, enabling precise and efficient vehicle diagnostics (Mishra and Kamal 2024). Additionally, an innovative anchor-free detection framework is proposed, which offers a more flexible and potentially more accurate method for detecting car damage by avoiding the need for predefined anchor boxes (Jin et al. 2023). Table 5 presents a summary of object detection techniques used across the reviewed studies.

Unlike object detection, which focuses on producing bounding boxes around objects for localization, segmentation provides more granular information by classifying each pixel as belonging to a particular object or background (see Figure 13). This process typically employs CNNs to extract features at multiple levels of abstraction. These features are then used by specialized layers, such as fully convolutional networks (FCNs) or regionbased approaches like mask R-CNN (MRCNN), to predict the class of each pixel (Minaee et al. 2021). In vehicle damage segmentation, a typical method like UNet, known for its encoderdecoder architecture with skip connections, effectively handles pixel-wise segmentation tasks, making it valuable for detailed damage assessments such as identifying broken glass and dents (Venkatesh et al. 2023). Furthermore, MRCNN, an extension of Faster R-CNN, integrates object detection and instance segmentation into a single framework (He et al. 2017). By predicting segmentation masks, MRCNN provides the pixel-level accuracy essential for assessing vehicle damage, with deeper networks like ResNet101-FPN offering superior performance (Meng et al. 2023). Building on this, the MARS framework enhances segmentation accuracy through self-attention mechanisms and quadtree-based modeling, outperforming traditional methods in challenging scenarios (Panboonyuen et al. 2023). An overview of the classification methods adopted in the selected studies is provided in Table 6.

Figure 15 shows the number of papers of traditional approaches, DL based classification, DL based detection, and DL based segmentation used in this systematic review. A total of 13 AI-based methods (including variants) such as TCLF, CLT, S-CNN, Yolo, and so on, were analyzed across the reviewed papers, with some papers presenting more than one method. The distribution of work reveals that the majority of research has concentrated on damage classification. Damage detection follows with over 15 papers, highlighting the importance of identifying the presence and extent of damage, which is crucial for timely maintenance and repair. Damage segmentation is presented in over 20 papers, reflecting ongoing efforts to precisely delineate damaged areas, as this is essential for making detailed analyzes and severity assessments. In addition to the separate analysis of classification, detection, and segmentation, several studies conducted model benchmarking, evaluating multiple deep learning models within the same framework to compare performance across tasks (Huynh et al. 2023). Table 7 presents a combined summary of deep learning approaches that integrate classification, detection, and segmentation within the same study or framework.

### 4.4.5 | Evaluation

The evaluation of image classification methods in review papers often involves assessing the performance using various metrics such as accuracy, recall, and precision (Chua et al. 2021; Patil et al. 2017). These metrics are essential for ensuring the reliability of classification models in real-world applications. The key metrics are described below.

- Accuracy: Accuracy measures the overall effectiveness of a classification model. It is the ratio of correctly identified instances (both true positives and true negatives) to the total number of instances. However, accuracy may not be sufficient when dealing with imbalanced datasets, where the number of instances in each class varies significantly. In such cases, a model might achieve high accuracy by correctly predicting the majority class while neglecting the minority class, which can be critical in damage detection scenarios.
- Recall: Recall (or Sensitivity) measures the model’s ability to identify all relevant instances of a specific class. It is especially important in damage detection to understand how well the model detects actual damaged instances (Kyu and Woraratpanya 2020).
- Precision: Precision evaluates the accuracy of the positive predictions made by the model. It is the ratio of true positive instances to the sum of true positive and false positive instances. High precision indicates that the model’s positive predictions

TABLE 4 | Summary of deep learning methods: classification.
| References | Application area | Methods | Contribution | Future direction |
| :— | :— | :— | :— | :— |
| Patil et al. (2017) | Insurance claims | CTL | Achieved 89.5% accuracy in car damage classification using transfer learning and ensemble methods. | Increase labeled dataset size, improve interclass damage differentiation techniques. |
| Sharma et al. (2019) | Insurance claim | S-CNN, CTL | Achieved 88% accuracy in car damage detection and classification using CNN and transfer learning | Enhancing dataset, improving accuracy, addressing shadow effects, real-world testing. |
| Waqas et al. (2020) | Insurance claim | CTL | Achieved 95% accuracy in vehicle damage classification and 99% in detecting fraudulent images. | Improve robustness, handle bad lighting, angles, and weather conditions. |
| Kyu and Woraratpanya (2020) | Insurance claim | CTL | Achieved 95.22% accuracy in damage detection using VGG19 with transfer learning and regularization. | Utilize more regularization techniques, larger datasets, include repair cost prediction. |
| Chua et al. (2021) | Insurance claim | S-CNN | Achieved 81.25% validation accuracy in car parts classification and 49.28% in damage identification. | Increase dataset size, improve image resolution, explore other models. |
| Sruthy et al. (2021) | Insurance claim | CTL | Achieved 97.28% accuracy in car damage identification and categorization using MobileNet transfer learning model. | Train with real-time images for near 100% accuracy. |
| Bandi et al. (2021) | Insurance claim | CTL | Achieved up to 87.9% accuracy in car damage detection and severity classification using CNNs. | Incorporate higher quality datasets, location information, and repair cost prediction. |
| Khan et al. (2021) | Insurance claim | CTL | Achieved 70% accuracy with MobileNet and 50% with VGG19 for multiclass vehicle damage detection. | Determine damage severity, enhance dataset, improve model robustness. |
| Feng et al. (2021) | Disaster management | SCNN | Achieved high accuracy in vehicle damage assessment using deep learning regression calculation. | Expand dataset, enhance model accuracy, incorporate functional damage assessment. |
| Ünal et al. (2022) | Insurance claim | CTL | Achieved highest classification accuracy of 98.39% using NasNetLarge on augmented dataset. | Increase dataset size for more reliable real-world performance evaluation. |
| Tian and Han (2022) | Insurance claim car rentals | CTL | Achieved up to 97.1% classification accuracy with augmented images using deep learning and transfer learning. | Improve models for different angles, add target area detection. |

(Continues)

TABLE 4 | (Continued)
| References | Application area | Methods | Contribution | Future direction |
| :— | :— | :— | :— | :— |
| Rababaah (2022) | Insurance claim, car rentals | S-CNN | Achieved a remarkable classification accuracy of 98.7% for vehicle body damage classification using CNNs. | Extend dataset, include more damage classes, improve model validation. |
| Mahyoub et al. (2023) | Insurance claim | CTL, DCGAN | Added synthetic images generated by DCGAN and achieved 97.7% training accuracy and 85.3% validation accuracy. | Explore other GAN architectures, enhance model robustness, expand dataset variety. |
| Rababaah (2023) | Insurance claim | CTL | Achieved 93% classification accuracy using DenseNet121 for vehicle damage classification. | Explore hybrid models, improve accuracy with larger datasets, integrate real-time applications. |
| Mallem and Nakib (2023) | Insurance claim | Co-Meta | Achieved 87.6% accuracy using Co-Meta framework, improving 1% accuracy and reducing memory usage by half. | Explore additional optimization methods, integrate real-time data, enhance robustness. |
| Jalili et al. (2024) | Insurance claim | EfficientNet | Achieved 94.6% accuracy using EfficientNet for real-time vehicle damage verification. | Enhance robustness, reduce data imbalance, integrate real-time fraud detection. |

are mostly correct, minimizing false alarms, which is crucial in applications where false positives can lead to unnecessary actions or costs (Kyu and Woraratpanya 2020).

- F1 Score: The F1 score is the harmonic mean of precision and recall, providing a single metric that balances both concerns. It is especially useful when dealing with imbalanced datasets as it considers both false positives and false negatives, offering a more comprehensive evaluation of the model’s performance.
- Specificity: Specificity measures the proportion of actual negatives that are correctly identified. It is useful in conjunction with recall to understand the model’s performance across both classes.
- ROC Curve: The ROC curve and AUC represent the likelihood that the model ranks a random positive instance higher than a random negative instance. A higher AUC indicates better overall performance.

When evaluating damage detection and segmentation tasks, the mean Average Precision (mAP) is a suitable measure (Zhang, Chang, et al. 2020; Zhu, Hu, et al. 2021). For object detection models, especially those using the YOLO (You Only Look Once) framework and COCO (Common Objects in Context) datasets, additional metrics are commonly used.

- YOLO Metrics: Evaluating YOLO models involves key metrics: mAP, which averages precision across classes; Intersection over Union (IoU), measuring overlap between predicted and ground truth boxes; and the Precision-Recall Curve, showing the trade-off between precision and recall (Fumin 2023). In addition, YOLO uses the F1 Score to balance precision and recall, and the Confusion Matrix to detail true and false positives and negatives. The ROC Curve and Area Under the Curve (AUC) are less common but can also be used to assess performance by plotting true positive rates against false positive rates. These metrics ensure a comprehensive evaluation of YOLO’s accuracy and efficiency (Ramazhan et al. 2023).
- COCO Metrics: COCO metric calculates the average precision (AP) across different IoU thresholds, ranging from 0.5 to 0.95 with a 0.05 interval. It also provides insights into the evaluation by highlighting AP50 and AP75, which showcase the model’s performance at specific IoU thresholds. Additionally, COCO evaluation includes metrics for AP at different scales, denoted as APS, APM, and APL (Chen et al. 2015). These metrics help evaluate the model’s performance on objects of varying sizes: APS measures AP for small objects with an area less than 1282 pixels, APM for medium-sized objects with an area between 1282 and 2562 pixels, and APL for large objects with an area greater than 2562 pixels. Furthermore, recall is measured to assess the model’s ability to accurately identify all relevant objects within an image (Wang et al. 2023).

## 4.5 | Challenges and Gaps

Tables 3-7 provide a comprehensive summary of the key contributions of 55 research works, detailing article information,

TABLE 5 | Summary of deep learning methods: detection.
| References | Application area | Methods | Contribution | Future direction |
| :— | :— | :— | :— | :— |
| Jin et al. (2023) | Insurance, car sharing | YOLOX | Achieved 59.2% AP50 and 39.9% AP, outperforming baseline by 5.5% and 8.7%, respectively. | Improve detection accuracy for tiny objects, enhance computational efficiency. |
| Ramazhan et al. (2023) | Insurance claim | YOLOv7 | Achieved 97.2% precision and 92.8% recall for car damage detection using YOLOv7x. | Improve robustness, handle occlusions, and enhance real-time processing capabilities. |
| Kannan et al. (2023) | Insurance claim | YOLO | Achieved 90.45% overall accuracy, 87.36% per-class accuracy using CDA- YOLOv5 for car damage assessment. | Enhance dataset, integrate cost estimation, improve real-time processing capabilities. |
| Setyawan et al. (2023) | Insurance claim | YOLO-v5x | Achieved 95.1% precision, 86.9% recall, and 90.8% F1-score for car damage detection using YOLO-v5x. | Improve small damage detection, enhance computational efficiency, extend to real-time applications. |
| Thomas et al. (2023) | Insurance claim car rentals | SSD | Achieved 98% accuracy for CNN model and 0.5 precision and recall for object detection. | Extend training steps, improve detection precision, include additional damage categories. |
| Fumin (2023) | Insurance claim | YOLOV7 | Achieved 30 FPS real-time detection with 95.4% accuracy using YOLOv7 on edge devices. | Enhance robustness, improve detection accuracy, expand dataset diversity, optimize edge implementation. |
| Mishra and Kamal (2024) | Insurance claim | YOLOV8 | Achieved 98% accuracy in vehicle damage identification using YOLOv8 and ResNet-50. | Improve dataset diversity, integrate real-time processing, enhance segmentation precision. |

TABLE 6 | Summary of deep learning methods: segmentation.
| References | Application area | Methods | Contribution | Future direction |
| :— | :— | :— | :— | :— |
| Zhu et al. (2019) | Insurance claim | MRCNN | Achieved above 70% accuracy in vehicle damage assessment using unified computer vision framework. | Combine vehicle damage characteristics with tailored algorithms for higher accuracy. |
| Zhang, Chang, et al. (2020) | Insurance claim | MRCNN | Improved mask RCNN achieved 83% AP for vehicle damage detection and segmentation. | Increase dataset size, enhance edgecontour, improve masking accuracy. |
| Patil (2021) | Insurance claim | MRCNN | Achieved 96.65% validation accuracy in recognizing car scratches using EM algorithm and mask R-CNN. | Improve scratch category identification, integrate complete dataset, enhance segmentation accuracy. |
| Qu and Chen (2021) | Traffic | S-CNN HOG | Achieved 93.88% accuracy in vehicle segmentation and quality assessment using FR-IQA and CNN methods. | Enhance robustness, handle occlusions, improve real-time performance, and integrate multi-sensor data. |
| Zhu, Hu, et al. (2021) | Insurance claim | MRCNN | Achieved 81.6% precision and 67.4% recall in vehicle damage recognition using mask R-CNN with KL-loss. | Improve model performance, enhance commercial application, increase dataset accuracy. |
| Zhu, Liu, et al. (2021) | Car sharing | MRCNN | Achieved accurate vehicle damage detection for rental cars using image recognition and mask R-CNN. | Improve damage detection accuracy, integrate real-time processing, enhance user experience. |
| Oubelkas et al. (2022) | Insurance claim, car rentals | MRCNN | Achieved 96.9% mask accuracy and improved speed compared to mask RCNN on complex images. | Increase dataset size for enhanced training and better segmentation accuracy. |
| Ma et al. (2023) | Post-accident | DeepLabV3+, EfficientNet | Achieved 0.804 IoU for part localization, 0.463 IoU for damage localization. | Investigate integrating repair cost estimation into the model. |
| Qaddour and Siddiqa (2023) | Insurance claim | MRCNN | Achieved 92% detection accuracy, 85% localization accuracy, and 80% severity classification accuracy. | Integrate part pricing database, explore alternative pre-trained models. |
| Taspan et al. (2023) | Insurance claim | Deep spectral, MRCNN | Improved instance segmentation by 12.9% and semantic segmentation by 18.8% using pseudo-labels with Deep Spectral | Explore real-world datasets and validate approach with diverse datasets. |
| Panboonyuen et al. (2023) | Insurance claim | MARS | Introduced a self-attention with sequential quadtree nodes and achieved 36.2 AP with R50-FPN and 37.5 AP with R101-FPN on Thai dataset. | Enhance robustness, improve real-time performance, integrate additional datasets. |

(Continues)

TABLE 6 | (Continued)
| References | Application area | Methods | Contribution | Future direction |
| :— | :— | :— | :— | :— |
| Shakhovska et al. (2023) | Insurance claim | MRCNN | Achieved 0.14 mAP with ResNet50 and 0.11 mAP with ResNet101 for damage segmentation. | Improve dataset quality, explore additional augmentation techniques, enhance model robustness. |
| Meng et al. (2023) | Insurance claim | MRCNN | Achieved 48.1% box AP and 43.9% mask AP with ResNet101-FPN for damage detection. | Explore other backbone networks, integrate attention mechanisms, evaluate larger datasets. |
| Mallios et al. (2023) | Insurance claim | MRCNN, YOLO | Achieved 0.804 IoU for part localization, 0.463 IoU for damage localization, 2% AUC improvement. | Enhance damage estimation accuracy, integrate repair cost estimation, adapt to new car models. |

![](WIREs%20Data%20Min%20Knowl%20-%202025%20-%20Hasan%20-%20Vehicle%20Dama/images4e7adf96-fdc0-4554-bc27-57f75855a304-18_640_853_113_1059.jpg)

![](WIREs%20Data%20Min%20Knowl%20-%202025%20-%20Hasan%20-%20Vehicle%20Dama/images4e7adf96-fdc0-4554-bc27-57f75855a304-18_34_853_767_1060.jpg)

![](WIREs%20Data%20Min%20Knowl%20-%202025%20-%20Hasan%20-%20Vehicle%20Dama/images4e7adf96-fdc0-4554-bc27-57f75855a304-18_33_795_807_1060.jpg)

![](WIREs%20Data%20Min%20Knowl%20-%202025%20-%20Hasan%20-%20Vehicle%20Dama/images4e7adf96-fdc0-4554-bc27-57f75855a304-18_37_853_951_1060.jpg)

![](WIREs%20Data%20Min%20Knowl%20-%202025%20-%20Hasan%20-%20Vehicle%20Dama/images4e7adf96-fdc0-4554-bc27-57f75855a304-18_37_853_991_1060.jpg)

O

$l$

AMS LaMELECHERE

![](WIREs%20Data%20Min%20Knowl%20-%202025%20-%20Hasan%20-%20Vehicle%20Dama/images4e7adf96-fdc0-4554-bc27-57f75855a304-18_37_853_1110_1060.jpg)

Obendole Feed

![](WIREs%20Data%20Min%20Knowl%20-%202025%20-%20Hasan%20-%20Vehicle%20Dama/images4e7adf96-fdc0-4554-bc27-57f75855a304-18_37_853_1190_1060.jpg)

![](WIREs%20Data%20Min%20Knowl%20-%202025%20-%20Hasan%20-%20Vehicle%20Dama/images4e7adf96-fdc0-4554-bc27-57f75855a304-18_37_855_1230_1060.jpg)

![](WIREs%20Data%20Min%20Knowl%20-%202025%20-%20Hasan%20-%20Vehicle%20Dama/images4e7adf96-fdc0-4554-bc27-57f75855a304-18_37_853_1270_1060.jpg)

![](WIREs%20Data%20Min%20Knowl%20-%202025%20-%20Hasan%20-%20Vehicle%20Dama/images4e7adf96-fdc0-4554-bc27-57f75855a304-18_38_853_1310_1060.jpg)

![](WIREs%20Data%20Min%20Knowl%20-%202025%20-%20Hasan%20-%20Vehicle%20Dama/images4e7adf96-fdc0-4554-bc27-57f75855a304-18_38_853_1350_1060.jpg)

Suber condied Signature ofteringtal

![](WIREs%20Data%20Min%20Knowl%20-%202025%20-%20Hasan%20-%20Vehicle%20Dama/images4e7adf96-fdc0-4554-bc27-57f75855a304-18_36_852_1511_1060.jpg)

![](WIREs%20Data%20Min%20Knowl%20-%202025%20-%20Hasan%20-%20Vehicle%20Dama/images4e7adf96-fdc0-4554-bc27-57f75855a304-18_37_852_1550_1060.jpg)

Long clabl

![](WIREs%20Data%20Min%20Knowl%20-%202025%20-%20Hasan%20-%20Vehicle%20Dama/images4e7adf96-fdc0-4554-bc27-57f75855a304-18_37_852_1629_1060.jpg)

and

![](WIREs%20Data%20Min%20Knowl%20-%202025%20-%20Hasan%20-%20Vehicle%20Dama/images4e7adf96-fdc0-4554-bc27-57f75855a304-18_37_852_1710_1060.jpg)

![](WIREs%20Data%20Min%20Knowl%20-%202025%20-%20Hasan%20-%20Vehicle%20Dama/images4e7adf96-fdc0-4554-bc27-57f75855a304-18_37_853_1749_1060.jpg)

![](WIREs%20Data%20Min%20Knowl%20-%202025%20-%20Hasan%20-%20Vehicle%20Dama/images4e7adf96-fdc0-4554-bc27-57f75855a304-18_38_853_1789_1060.jpg)

![](WIREs%20Data%20Min%20Knowl%20-%202025%20-%20Hasan%20-%20Vehicle%20Dama/images4e7adf96-fdc0-4554-bc27-57f75855a304-18_37_853_1829_1060.jpg)

and O Boodelombanded Seerocolo oficon READELE
levecometry

![](WIREs%20Data%20Min%20Knowl%20-%202025%20-%20Hasan%20-%20Vehicle%20Dama/images4e7adf96-fdc0-4554-bc27-57f75855a304-18_37_853_2149_1060.jpg)

![](WIREs%20Data%20Min%20Knowl%20-%202025%20-%20Hasan%20-%20Vehicle%20Dama/images4e7adf96-fdc0-4554-bc27-57f75855a304-18_37_853_2190_1060.jpg)

![](WIREs%20Data%20Min%20Knowl%20-%202025%20-%20Hasan%20-%20Vehicle%20Dama/images4e7adf96-fdc0-4554-bc27-57f75855a304-18_37_853_2229_1060.jpg)

![](WIREs%20Data%20Min%20Knowl%20-%202025%20-%20Hasan%20-%20Vehicle%20Dama/images4e7adf96-fdc0-4554-bc27-57f75855a304-18_37_853_2268_1060.jpg)

![](WIREs%20Data%20Min%20Knowl%20-%202025%20-%20Hasan%20-%20Vehicle%20Dama/images4e7adf96-fdc0-4554-bc27-57f75855a304-18_37_853_2308_1060.jpg)

Lone

![](WIREs%20Data%20Min%20Knowl%20-%202025%20-%20Hasan%20-%20Vehicle%20Dama/images4e7adf96-fdc0-4554-bc27-57f75855a304-18_37_853_2388_1060.jpg)

Oீருவலையன்

![](WIREs%20Data%20Min%20Knowl%20-%202025%20-%20Hasan%20-%20Vehicle%20Dama/images4e7adf96-fdc0-4554-bc27-57f75855a304-18_37_853_2468_1060.jpg)

![](WIREs%20Data%20Min%20Knowl%20-%202025%20-%20Hasan%20-%20Vehicle%20Dama/images4e7adf96-fdc0-4554-bc27-57f75855a304-18_37_853_2508_1060.jpg)

TABLE 7 | Summary of deep learning methods: a mix of damage classification, detection, and segmentation.

| References | Application area | Methods | Contribution | Future direction |
| --- | --- | --- | --- | --- |
| Dhieb et al. (2019) | Insurance claim | CTL, MRCNN | Achieved 86.8% precision in vehicle damage localization using Inception-ResnetV2 and mask R-CNN techniques. | Enhance model with more diverse data, optimize real-time application. |
| Barari et al. (2020) | Premium assertion | Cascade CNN | Car damage classification Achieved higher accuracy compared to other approaches using the Cascade CNN model | Aimed to thoroughly analyze the severity of the damage. |
| Artan and Kaya (2020) | Insurance claim | CTL, SSD | Achieved 77% accuracy in detecting car damage areas and classifying damage severity using CNNs | Enhance model robustness, expand dataset, improve damage classification accuracy. |
| Jameel et al. (2021) | Insurance claim | MRCNN | Achieved 93.88% accuracy in vehicle segmentation using background subtraction and HOG features. | Enhance model robustness, integrate multi-sensor data, optimize real-time performance. |
| Thonglek et al. (2021) | Insurance claim | CapsNet | Achieved 91.53% localization accuracy and 98.47% classification accuracy for vehicle damage using CapsNet. | Integrate driver applications, automate retraining process, and expand body shop database. |
| Balcı and Artan (2021) | Traffic, Insurance | CTL, SSD | Achieved 91% accuracy in frontal vehicle damage detection using SSD and InceptionV3 models. | Train on larger dataset, include night-time images, explore GAN-based approaches. |
| Dorathi Jayaseeli et al. (2021) | Insurance claim | FRCNN, CapsNet | Webapp: Intelligent vehicle accident analysis system (IVAA). Car damage detection | G: AV, PI OD F: aimed to enhance app feature |
| Li, Ono, et al. (2021) | Insurance claim | CTL, MRCNN | Achieved 87.5% accuracy in vehicle damage detection using mask R-CNN and transfer learning. | Improve detection of damages at different angles, add target area detection. |
| Dwivedi, Malik, et al. (2021) | Insurance car rentals | MRCNN | Segment the area of damage | G: AV, PI OD F: aimed to extend dataset |
| Parhizkar and Amirfakhrian (2022a) | Insurance claim | Cascade CNN, MRCNN | Achieved 87% precision and 93% recall for damage detection, 87% car detection precision. | Improve robustness, handle illumination issues, enhance real- time detection capabilities. |
| Reddy et al. (2022) | Insurance claim | Fast R-CNN, MRCNN | Achieved 90% accuracy in damage detection and classification using Fast R-CNN and mask R-CNN | Improve prediction accuracy, expand dataset, include new damage categories. |

(Continues)

TABLE 7 | (Continued)
| References | Application area | Methods | Contribution | Future direction |
| :— | :— | :— | :— | :— |
| Shirode et al. (2022) | Insurance claim | CTL, MRCNN | Achieved 85% accuracy for damage detection using VGG16 and precise damage masking with mask R-CNN | Expand dataset, improve model robustness, include cost estimation. |
| Wang et al. (2023) | Insurance claim | Model benchmarking | Achieved 72.4% mAP for detection and 66.1% mAP for segmentation using DCN+ on CarDD dataset. | Improve small object detection, integrate anomaly detection, enhance dataset diversity. |
| Venkatesh et al. (2023) | Insurance claim | CTL, MRCNN, UNET | Achieved 92% real-time test accuracy using VGG16, YOLOv8, and SegFormer for damage assessment. | Extend dataset, improve model robustness, develop end-user web application. |
| Huynh et al. (2023) | Insurance claim | Model benchmarking | Achieved 53.6% AP and 59.4% AP50 using mask R-CNN with ResNet-50 on VehiDE dataset. | Improve detection of small objects, enhance annotation quality, expand dataset. |
| Amodu et al. (2024) | Insurance claim | GAN, SCNN | Achieved 91% accuracy with CNN, 84% with DNN, and 78% with GAN for damage classification | Improve dataset size, enhance real-time application, explore hybrid models. |

researchers must develop robust algorithms capable of handling these variations to ensure accurate results.

In e-commerce research, a major challenge lies in navigating the legal and ethical considerations of integrating AI into automotive damage detection. This involves data privacy considerations, particularly in protecting individuals’ identities in training data and preventing unauthorized access to sensitive client information. Researchers must prioritize transparency and comprehensibility in AI models, particularly for tasks like estimating repair costs or insurance claims. The significant investments required for developing and deploying AI systems necessitate a careful evaluation of their return on investment, weighing the benefits against potential risks. To address the diverse challenges within e-commerce, a SLR becomes indispensable. Through SLR, researchers can identify successful methodologies and strategies amidst the lack of uniformity in data collection, model testing, and evaluation processes. This critical insight informs the selection of appropriate methodologies, models, and datasets for training AI models in vehicle damage detection.

## 4.6 | Future Directions

While significant advancements have been made in the field of car damage detection, future research can build upon these foundations by exploring several emerging areas in computer vision.

### 4.6.1 | Future Directions in AI Modeling

Traditional CNNs have demonstrated effectiveness in car damage detection and classification tasks (Patil et al. 2017; Zhu et al. 2019). However, recent advancements in deep learning suggest that transformer-based vision models could further elevate performance. Vision Transformers (ViTs) (Dosovitskiy et al. 2020), along with specialized variants such as OV-DETR (Zang et al. 2022) and DINO-DETR (Zhang, Li, et al. 2022), offer superior capabilities in capturing long-range dependencies and contextual cues. These advantages are particularly valuable for accurately identifying and classifying damages across various vehicle components, especially in cases involving occlusions or diverse damage scales. As such, the adoption of these transformer-based approaches marks a significant step forward in enhancing the robustness and reliability of car damage detection systems.

Building upon these advances in vision modeling, the integration of multimodal models represents a logical progression for future research. By combining visual and textual inputs, these models facilitate more nuanced and context-aware damage analysis. Techniques such as phrase grounding in object detection-exemplified by models like OV-DETR (Zang et al. 2022), GLIP (Li et al. 2022), and Grounding DINO (Liu, Zeng, et al. 2023)-enable systems to localize objects based on natural language prompts. For example, when provided with a phrase like “a red car,” a phrase grounding model can precisely identify the relevant region in an image (Hasan et al. 2024). This capability supports the development of more intuitive and user-centric
applications, allowing users to describe vehicle damage in natural language, which the system can then accurately interpret and assess.

Taking this multimodal direction further, the incorporation of large language models (LLMs) with vision capabilities offers a compelling opportunity to expand the scope of automated damage analysis. Open-source architectures such as BLIP-2 (Li et al. 2023) and its enhanced successor MiniGPT-v2 (Zhu et al. 2023) illustrate the potential of vision-language synergy for understanding and localizing user-described damage. These models excel at interpreting complex user queries and translating them into precise visual outputs. Recent models like LLaVA (Liu, Li, et al. 2023) and LLaMA3-based vision-language variants (Grattafiori et al. 2024) have further improved grounding accuracy and semantic comprehension. In automotive contexts, such models can enable seamless damage assessment based on simple textual inputs-improving inspection workflows, reducing reliance on expert knowledge, and enhancing customer experiences across services like insurance claims and repair estimation.

Complementing detection and classification, improving segmentation techniques remains a critical area of advancement. Accurate segmentation is essential for delineating damaged areas at a granular level, particularly in complex scenes. Stateof-the-art approaches such as SegViT (Zhang, Tian, et al. 2022), MARS (Panboonyuen et al. 2023), and EfficientSAM (Xiong et al. 2024) have contributed significantly to this objective. EfficientSAM, for instance, balances computational efficiency and segmentation precision, making it highly suitable for realtime or resource-constrained environments. SegViT capitalizes on the strengths of ViTs to achieve fine-grained segmentation, especially in cases involving intricate or subtle damage patterns.

### 4.6.2 | Direction to Challenging Scenario

Indeed, recent developments have addressed issues with angle variation, low lighting, and angle issues in object recognition. Innovative strategies have been introduced by researchers to address these problems and lift the accuracy of detection systems. In order to extract rotation-equivariant features, Han et al. (2021) present an up-to-date method named RiRoI Align to encode images’ properties. This method can extract the rotation invariant property according to the ROI from the equivalent features. The author of this paper introduced a high dynamic range (HDR) imaging technique to generate HDR datasets from existing SDR datasets to train HDR detection models so that they can mitigate critical lighting conditions (Mukherjee et al. 2021). Bertasius et al. (2018) introduced the spatiotemporal sampling network (STSN), a new architecture for object detection in the context of defocus, motion blur, occlusions, and unusual angles in a video frame. An attentionbased Context R-CNN approach is proposed by the author Beery et al. (2020). By incorporating these advanced techniques, future research can effectively tackle challenges such as angle variation, low lighting, and overlapping damage. This integration will significantly improve model performance and enhance their effectiveness in challenging scenarios for object detection systems.

### 4.6.3 | Integration of Diverse Datasets

Leveraging diverse and large-scale datasets, including synthetic data generated through techniques like DCGAN (Radford et al. 2015) and StyleGAN (Karras et al. 2019), as well as advanced data augmentation methods like CutMix (Yun et al. 2019), can significantly improve model robustness and generalizability. Future research should focus on further expanding and utilizing public large-scale datasets specifically designed for car damage detection and segmentation. This expansion would provide a more comprehensive training ground for models, allowing them to better handle a variety of real-world scenarios. Addressing the challenge of noisy data will be crucial for the future development of car damage AI models, as noisy data can significantly reduce model performance. Innovative approaches such as the CO-Meta framework (Mallem and Nakib 2023) and robust noise filtering techniques like Co-teaching (Han et al. 2018) and JoCoR (Wei et al. 2020), which are designed to handle noisy damage data, should be refined and integrated with advanced models. By integrating these methods, future models will be able to maintain high performance even when faced with imperfect data, thereby enhancing their practical utility and effectiveness in real-world deployments. This direction will ensure the development of more reliable and robust damage detection systems.

### 4.6.4 | Real-Time and Edge Computing Applications

Research should also focus on the implementation of these advanced models in real-time and edge computing environments. Developing lightweight and efficient versions of these models can enable their deployment in mobile applications and realtime damage detection systems. Additionally, optimizing these models for low-latency and high-throughput processing will be essential to meet the demands of real-world applications. Exploring hardware acceleration techniques, such as leveraging GPUs and TPUs, can further enhance the performance and efficiency of these models. This direction will pave the way for more practical and scalable solutions in car damage detection and other related fields.

By focusing on these future directions, researchers can contribute to the development of more sophisticated, accurate, and user-friendly car damage detection systems, ultimately improving the efficiency and effectiveness of vehicle damage assessment processes.

## 4.7 | Summary

The findings revealed that most of the existing work focused on image classification, detection, and segmentation, with little attention given to differentiating between damage types and their severity levels. Some authors introduced advanced approaches, like the use of expectation maximization (EM) algorithms and new loss functions named KL-loss, to address challenges in damage detection (Patil 2021; Zhu, Hu, et al. 2021). Although many papers did not address the challenging scenario in detecting damage, some researchers introduced improved models to tackle these challenges (Barari et al. 2020). For instance, by
incorporating image processing techniques with CNN strategies, one study successfully provided a robust solution to handle illumination variations, which often hindered accurate detection in poor lighting conditions (Parhizkar and Amirfakhrian 2022a).

We found that one of the biggest challenges is the lack of standardized, diverse, and publicly available training datasets, which makes it hard for the model to understand different damage patterns. Moreover, inconsistency in testing and evaluation due to the absence of a standardized dataset further complicates the identification of different damage types. Additionally, the complexity of the detection task, which involves various damage types and severities, makes it even more challenging. The impact of lighting conditions on the appearance of damage can also affect the accuracy of the model. Overall, the SLR highlighted the need for more research and innovation to improve the accuracy and effectiveness of AI-based vehicle damage detection systems, particularly in detecting minor damages and handling overlapping damages.

## 5 | Discussion

The SLR highlights the significant advancements and trends in using AI for vehicle damage detection. Various AI techniques, including machine learning and deep learning, have been extensively explored and applied to this domain. CNNs and other DL architectures, such as YOLO and Mask R-CNN, have demonstrated high accuracy in detecting and classifying vehicle damages. This section elucidates the key research questions highlighted in Section 1. It examines AI-based computer vision for identifying used car conditions, detecting damages through mobile photos, the availability of data for robust AI models, evaluation methods for operational viability, and the strengths and limitations of these AI techniques.

What research is available on the use of AI-based computer vision that can help to identify the condition of a used-car?

Based on previous literature summarized in Section 4.4.4, specifically in Figure 15, numerous AI-based computer vision methods have been proposed to detect various issues with preowned cars, such as scratches, dents, and combinations of these damages. For instance, models like YOLOv7 (Qaddour and Siddiqa 2023) and Deep Spectral Methods (Kumar et al. 2023) have significantly improved performance in detecting and assessing car damage. Additionally, deep learning modules integrated within human-in-the-loop systems have been developed to accurately localize vehicle damage and estimate its severity (Oubelkas et al. 2022). Moreover, various algorithms, such as the EM algorithm (Patil et al. 2017), Cascade CNN (Barari et al. 2020), and improved RoIAlign for Mask-RCNN (MRCNN) (Jameel et al. 2021), have been employed to enhance the accuracy of damage classification and segmentation. These models have been used not only to identify different types and severity of car damage but also to estimate repair costs (Waqas et al. 2020).

While current literature shows ongoing advancements in AI algorithms for improving the accuracy of detecting major damages, existing models still face challenges in dealing with minor damages. Identifying and evaluating minor damages in vehicles is essential for safety, insurance claims, and determining a car’s value. Minor damages often result from small flaws or structural issues that can be difficult to distinguish from normal wear and tear. Accurately classifying minor versus major damages is further complicated by factors such as reflections, angle problems, overlapping damages (dents and scratches), and distance issues (being too close or too far). Reflections can distort the visual appearance of damages, making it harder for the model to determine their severity accurately. Overlapping damages like cracks and scratches complicate the detection process, as the model must differentiate between them and identify their unique features. Angle problems and distance issues can also affect the appearance and severity of the damages, making it difficult for models to represent them effectively. Addressing these challenges requires further research to develop a comprehensive AI framework. A proper AI framework should effectively handle minor damages, account for reflections, distinguish between overlapping damages, adapt to different angles, and accurately assess the impact of varying distances.

Can AI-based computer vision adequately detect damages on a car through photos submitted by prospective sellers from mobile phones?

The mobile phone is a widely used device around the world, offering great convenience for everyday tasks. As many researchers develop AI solutions, transforming these models into mobile apps is essential for enhancing their utility for people buying and selling vehicles. Some research contributions highlight the development of mobile applications and web-based platforms to facilitate damage detection. For example, (Patil 2021) have developed mobile apps designed to classify car damage. These apps use advanced AI models to assess damage directly from photos taken by users, making the process more accessible and userfriendly for prospective car sellers. Additionally, web-based systems like the intelligent vehicle accident analysis system (IVAA) (Dorathi Jayaseeli et al. 2021) have been created to detect and assess car damage. These platforms use AI to analyze uploaded images, providing real-time damage assessment and improving the efficiency of the evaluation process.

The current research on using AI for car damage detection shows ongoing progress. However, there is a need for more research on adapting AI models for use on mobile phones. Challenges related to the variability and quality of images taken in uncontrolled environments are common when using mobile phones. The performance of AI algorithms on mobile phones can vary significantly due to factors such as the angle of the photos, lighting conditions, and reflections on the car’s body. It is crucial to ensure that AI models can effectively handle different angles, lighting conditions, and reflections for further research and application development.

## Do we have the data to develop a good AI model?

It’s important to have a diverse dataset to develop an effective AI model for vehicle damage detection. An ideal dataset should include various vehicles, types of damage, environmental conditions, and different angles and distances for photos. In Section 4.4.1, many of the datasets used for developing AI
models are not publicly available in the current literature. While some public datasets, such as carDD (Wang et al. 2023) and those from platforms like Kaggle (Mahyoub et al. 2023; Setyawan et al. 2023), are used, they also have some major issues. First, existing public datasets often focus on big damages but do not adequately represent moderate and minor damages, which are also necessary for tasks such as car inspections and evaluating selling prices. Second, there is a lack of variability and diversity in public datasets, with available categories not including all possible car damages. Lastly, public datasets often do not consider different zoom levels and angles, which can affect the appearance and severity assessment of the damage. Therefore, to develop a highly accurate and reliable AI models for vehicle damage detection, it is essential to have more publicly accessible datasets that offer diverse and standardized data, including a wide range of damage types and varying perspectives.

## How are the models evaluated to achieve operational viability of such a solution?

AI models for detecting vehicle damage are primarily evaluated using metrics outlined in Section 4.4.5 for identifying and categorizing damage. However, the practicality of these models depends on how well they perform under different environmental conditions. While some studies, such as those by Sharma et al. (2019) and Waqas et al. (2020), have focused on enhancing model performance under varying lighting conditions and camera angles, most research has not adequately addressed environmental variations during model evaluation. This oversight poses additional challenges.

Severity assessment: It is important to accurately assess the severity of damage, as it helps in estimating repair costs and making informed decisions in areas such as insurance and ecommerce. However, distinguishing between minor and moderate damage remains a significant challenge. Existing work often lacks differentiation between different types of damage and their severity levels, focusing more on detecting the presence or absence of damage rather than providing detailed classification or severity assessment. One of the main difficulties revealed in this literature review in evaluating the damage detection system is choosing the suitable method to measure the severity of the damage. The complexity of this challenge arises from several factors, including the multi-dimensional nature of severity, which is influenced by factors such as size, depth, location, and structural implications. Moreover, without a dependable dataset with severity labels, it becomes harder to validate and refine methods of calculating severity, ultimately affecting the accuracy and reliability of performance evaluation. Therefore, it is crucial (consider removing: to allow researchers more time) to perform thorough research for defining major, moderate, and minor damage, as well as for evaluation metrics based on realworld scenarios.

## What are the current strengths and limitations of current AI-based techniques?

Modeling methods in Section 4.4.4 demonstrate that AI techniques for identifying vehicle damage have shown significant strengths in various areas. One of the primary strengths is their high accuracy and efficiency in detecting and classifying vehicle damage in comparison with physical inspection and conventional methods. Many models, particularly CNNs and their variants, such as the Cascade CNN model used by Barari et al. (2020) achieved higher accuracy compared to other approaches, indicating the potential of advanced deep learning techniques in this domain. Another notable strength is the capability for precise segmentation and localization of damages. Advanced models like MRCNN can not only detect damages but also segment the damaged areas accurately, which is crucial for applications in insurance claims where precise damage assessment is necessary. This ability to segment and localize damages accurately helps in generating detailed reports for insurance processing.

Furthermore, several studies have focused on assessing the severity of damage in addition to merely detecting it. Techniques such as those employed by Zhu, Hu, et al. (2021) and Kyu and Woraratpanya (2020) provide a detailed classification of damage severity, which is beneficial for automated insurance claim processing. This capability allows for a more nuanced understanding of the damage, facilitating better decision-making in insurance and repair processes. Integration with mobile and web applications is another significant strength. Some approaches have successfully incorporated AI models into mobile apps and web-based platforms for real-time damage assessment and claims processing. For example, Patil (2021) discussed the use of a mobile app for car damage classification using the EM algorithm and Mask R-CNN, demonstrating the practical applications of these techniques in everyday scenarios.

Despite the above strengths, AI techniques for vehicle damage detection face several significant limitations. A major issue is the reliance on private datasets, which limits the reproducibility and generalizability of the results. Many studies use proprietary data, creating a barrier for other researchers who cannot access these datasets. The need for large, annotated public datasets remains a critical gap that needs to be addressed to advance the field. High computational requirements for training and deploying deep learning models can also be a barrier, particularly for real-time applications. Techniques like YOLO and SSD are designed for real-time processing, but they still demand substantial computational resources. This limitation can hinder the deployment of these models in resourceconstrained environments or scenarios requiring rapid processing.

Another challenge is ensuring robustness and generalization of the models across diverse conditions such as different lighting, weather, and damage types. Many AI models struggle to perform consistently under varying conditions, which is a significant drawback for real-world applications. Studies like those by Feng et al. (2021) aim to improve model accuracy and robustness through enhancements such as introducing KL-loss, but more work is needed in this area. Interpretability and explainability of deep learning models are also significant concerns. These models are often criticized for their black-box nature, making it difficult to understand and interpret the decision-making process. This lack of transparency can be problematic, especially in domains like insurance, where explainability is crucial for trust and regulatory compliance. Lastly, achieving real-time
performance at scale remains a challenge. While some progress has been made in real-time damage detection, such as the real-time surface damage detection systems developed by Shakhovska et al. (2023), integrating AI models into scalable and responsive systems is still an ongoing area of research. Balancing accuracy and efficiency to meet real-time processing requirements continues to be a critical issue.

## 6 | Conclusions

The SLR on AI-based vehicle damage detection shows significant advancements and ongoing challenges in the field. The use of AI and computer vision techniques has shown promising results in identifying and assessing car damage, especially with major damages like scratches and dents. Methods such as YOLOv7, Deep Spectral Methods, Cascade CNN, and improved RoIAlign for MRCNN have contributed to enhanced accuracy in damage detection and severity estimation. However, current models still face difficulties in accurately identifying minor damages, which are also important for safety, insurance claims, repairing price estimation, and vehicle valuation. Furthermore, the literature review explores the adaptability of AI models for mobile and web applications, the availability of diverse and comprehensive datasets, and evaluation metrics for AI models in vehicle damage detection. The strengths of current AI-based techniques include high accuracy and efficiency in damage detection, precise segmentation, and localization of damages. However, limitations such as challenges in handling the variability and quality of images taken in uncontrolled environments, reliance on private datasets, and high computational requirements need to be addressed.

Future research directions suggest exploring transformerbased vision models, multimodal models, and vision LLMs to enhance performance and usability. Improving damage segmentation techniques, addressing predefined challenges like angle variation and lighting conditions, integrating diverse datasets, and focusing on real-time and edge computing applications are critical steps forward. By building on these foundations, researchers can develop more sophisticated, accurate, and user-friendly car damage detection systems. These advancements will ultimately improve the efficiency and effectiveness of vehicle damage assessment processes, benefiting consumers, insurance companies, car dealerships, and repair services.

## Author Contributions

Md Jahid Hasan: conceptualization (lead), data curation (lead), formal analysis (lead), investigation (lead), methodology (lead), resources (equal), validation (equal), writing - original draft (lead), writing - review and editing (equal). Cong Kha Nguyen: conceptualization (supporting), formal analysis (supporting), investigation (equal), methodology (supporting), writing - review and editing (supporting). Yee Ling Boo: conceptualization (supporting), formal analysis (supporting), investigation (supporting), methodology (supporting), resources (equal), supervision (equal), writing - review and editing (equal). Hamed Jahani: formal analysis (supporting), supervision (equal), writing - review and editing (supporting). Kok-Leong Ong: conceptualization (supporting), data curation (supporting), formal analysis (supporting), funding acquisition (lead), investigation (equal), supervision (equal), writing - review and editing (equal).

## Acknowledgments

We sincerely appreciate the support from the researchers at the RMIT Enterprise AI and Data Analytics Hub, RMIT University. Their insightful recommendations and feedback were essential to our research. We would also like to extend our heartfelt thanks to our industry partner, carsales, for their invaluable collaboration and support throughout this project. Open access publishing facilitated by RMIT University, as part of the Wiley - RMIT University agreement via the Council of Australian University Librarians.

## Conflicts of Interest

The authors declare no conflicts of interest.

## Data Availability Statement

Data sharing is not applicable to this article, as no new data were created or analyzed in this study.

## Related WIREs Articles

[Deepfake detection using deep learning methods: A systematic and](https://doi.org/10.1002/widm.1520) [comprehensive review](https://doi.org/10.1002/widm.1520)

[Machine learning applied to tourism: A systematic review](https://doi.org/10.1002/widm.1549)[A systematic review and research recommendations on artificial intelligence for automated cervical cancer detection](https://doi.org/10.1002/widm.1550)

## References

AI Machine Learning. 2023. “Identifying Vehicle Damage Effectively With Explainable ai | Google Cloud Blog.” [https://cloud.google.com/blog/products/ai-machine-learning/identifying-vehicle-damage-effectively-with-explainable-ai](https://cloud.google.com/blog/products/ai-machine-learning/identifying-vehicle-damage-effectively-with-explainable-ai). (Accessed on 06/15/2024).

Allied Market Research. 2023. “Second Hand/Used Cars Market Worth $2619.2 Billion by 2031.” [https://www.alliedmarketresearch.com/press-release/used-cars-market.html](https://www.alliedmarketresearch.com/press-release/used-cars-market.html). (Accessed on 07/06/2023).

Alzubaidi, L., J. Zhang, A. J. Humaidi, et al. 2021. “Review of Deep Learning: Concepts, Cnn Architectures, Challenges, Applications, Future Directions.” Journal of Big Data 8: 1-74.

Amodu, O. D., A. Shaban, and G. Akinade. 2024. “Revolutionizing Vehicle Damage Inspection: A Deep Learning Approach for Automated Detection and Classification.” (199-208).

Archana, R., and P. E. Jeevaraj. 2024. “Deep Learning Models for Digital Image Processing: A Review.” Artificial Intelligence Review 57, no. 1: 11.

Alareeni, B., A. Hamdan, A. F. Alheet, and I. Elgedawy. 2021. “Impact of Artificial Intelligence on e-Commerce Development.” In The Importance of New Technologies and Entrepreneurship in Business Development: In the Context of Economic Diversity in Developing Countries: The Impact of New Technologies and Entrepreneurship on Business Development, vol. 194, 571-578. Springer Nature.

Artan, C. T., and T. Kaya. 2020. “Car Damage Analysis for Insurance Market Using Convolutional Neural Networks.” Intelligent and Fuzzy Techniques in Big Data Analytics and Decision Making: Proceedings of the Infus 2019 Conference, Istanbul, Turkey, july 23-25, 2019 (313-321).

Balcı, B., and Y. Artan. 2021. Frontal Vehicle Body Damage Assessment in Surveillance Camera Images Using Deep Learning Techniques In Smart Cities, Green Technologies and Intelligent Transport Systems: 8th International Conference, Smartgreens 2019, and 5th International Conference, Vehits 2019, Heraklion, Crete, Greece, May 3-5, 2019, Revised Selected Papers 8 (156-172).

Bandi, H., S. Joshi, S. Bhagat, and A. Deshpande. 2021. “Assessing Car Damage With Convolutional Neural Networks.” 2021 International Conference on Communication Information and Computing Technology (iccict). (1-5). [https://doi.org/10.1109/ICCICT50803.2021.9510069](https://doi.org/10.1109/ICCICT50803.2021.9510069).

Barari, A., N. Abhilash, P. Jain, A. Sati, K. S. Datta, and C. Jain. 2020. “Accurate Damage Dimension Estimation in Ai Driven Vehicle Inspection System.” In Computer Vision, Pattern Recognition, Image Processing, and Graphics: 7th National Conference, ncvpripg 2019, Hubballi, India, december 22-24, 2019, Revised Selected Papers 7 (pp. 154-162).

Beery, S., G. Wu, V. Rathod, R. Votel, and J. Huang. 2020. “Context rcnn: Long Term Temporal Context for Per-Camera Object Detection.” In Proceedings of the ieee/cvf conference on computer vision and pattern recognition (pp. 13075-13085).

Bertasius, G., L. Torresani, and J. Shi. 2018. “Object Detection in Video With Spatiotemporal Sampling Networks.” In Proceedings of the European Conference on Computer Vision (eccv). (331-346).

Bloomberg. 2021. “Record Used-Car Prices Can’t Keep Buyers Away-Bloomberg.” [https://www.bloomberg.com/news/articles/2021-07-16/record-used-car-prices-can-t-keep-buyers-away](https://www.bloomberg.com/news/articles/2021-07-16/record-used-car-prices-can-t-keep-buyers-away). (Accessed on 02/23/2024).

Sruthy, C. M., S. Kunjumon, and R. Nandakumar. 2021. “Car Damage Identification and Categorization Using Various Transfer Learning Models.” In 2021 5th International Conference on Trends in Electronics and Informatics (icoei) (p. 1097-1101). [https://doi.org/10.1109/ICOEI51242.2021.9452846](https://doi.org/10.1109/ICOEI51242.2021.9452846).

Chen, L., S. Li, Q. Bai, J. Yang, S. Jiang, and Y. Miao. 2021. “Review of Image Classification Algorithms Based on Convolutional Neural Networks.” Remote Sensing 13, no. 22: 4712.

Chen, X., H. Fang, T.-Y. Lin, et al. 2015. “Microsoft Coco Captions: Data Collection and Evaluation Server.” arXiv Preprint arXiv:1504.00325.

Chua, A. C., C. R. B. Mercado, J. P. R. Pin, et al. 2021. “Damage Identification of Selected Car Parts Using Image Classification and Deep Learning.” 2021 ieee 13th International Conference on Humanoid, Nanotechnology, Information Technology, Communication and Control, Environment, and Management (hnicem) (pp. 1-5).

Dhieb, N., H. Ghazzai, H. Besbes, and Y. Massoud. 2019. “A Very Deep Transfer Learning Model for Vehicle Damage Detection and Localization.” In 2019 31st International Conference on Microelectronics (icm) (p. 158-161). [https://doi.org/10.1109/ICM48031.2019.9021687](https://doi.org/10.1109/ICM48031.2019.9021687).

Dimou, A., P. Medentzidou, F. A. Garcia, and P. Daras. 2016. “Multi-Target Detection in cctv Footage for Tracking Applications Using Deep Learning Techniques.” 2016 Ieee International Conference on Image Processing (icip) (928-932).

Dorathi Jayaseeli, J., G. K. Jayaraj, M. Kanakarajan, and D. Malathi. 2021. “Car Damage Detection and Cost Evaluation Using Mask r-Cnn.” Intelligent Computing and Innovation on Data Science: Proceedings of Ictids 2021 (279-288).

Dosovitskiy, A., L. Beyer, A. Kolesnikov, D. Weissenborn, X. Zhai, and T. Unterthiner. 2020. “An Image Is Worth $16 \times 16$ Words: Transformers for Image Recognition at Scale.” arXiv Preprint arXiv:2010.11929.

Dwivedi, M., H. S. Malik, S. Omkar, et al. 2021. “Deep Learning-Based Car Damage Classification and Detection.” Advances in Artificial Intelligence and Data Engineering: Select Proceedings of Aide 2019 (pp. 207-221).

Dwivedi, Y. K., L. Hughes, E. Ismagilova, et al. 2021. “Artificial Intelligence (Ai): Multidisciplinary Perspectives on Emerging Challenges, Opportunities, and Agenda for Research, Practice and Policy.” International Journal of Information Management 57: 101994.

Fedorko, R., Š. Král’, and R. Bačík. 2022. “Artificial Intelligence in E-Commerce: A Literature Review.” In Congress on Intelligent Systems: Proceedings of cis 2021, 2 (677-689).

Feng, C., Z. Jia, L. Cheng, D. Yi, and X. Xiaodan. 2021. “Research on Vehicle Apparent Damage Assessment Technology Based on Intelligent Regression Calculation.” Procedia Computer Science 187: 71-76.

Fumin, Q. 2023. “Research and Design of Real-Time Detection System for Car Surface Damage Based on yolov7 and Edge Devices.” 2023 ieee 3rd International Conference on Data Science and Computer Application (icdsca) (424-428).

Girshick, R., J. Donahue, T. Darrell, and J. Malik. 2014. “Rich Feature Hierarchies for Accurate Object Detection and Semantic Segmentation.” Proceedings of the ieee conference on computer vision and pattern recognition (580-587).

Grattafiori, A., A. Dubey, A. Jauhri, A. Pandey, A. Kadian, and A. Al-Dahle. 2024. “The Llama 3 Herd of Models.” arXiv Preprint arXiv:2407.21783.

Han, B., Q. Yao, X. Yu, et al. 2018. “Co-Teaching: Robust Training of Deep Neural Networks With Extremely Noisy Labels.” Advances in Neural Information Processing Systems, 31.

Han, J., J. Ding, N. Xue, and G.-S. Xia. 2021. “Redet: A Rotation-Equivariant Detector for Aerial Object Detection.” Proceedings of the ieee/cvf Conference on Computer Vision and Pattern Recognition (2786-2795).

Harshani, W. R., and K. Vidanage. 2017. “Image Processing Based Severity and Cost Prediction of Damages in the Vehicle Body: A Computational Intelligence Approach.” 2017 National Information Technolo[gy](https://doi.org/10.1109/NITC.2017.8285649) Conference (nitc) (18-21). [https://doi.org/10.1109/NITC.2017.8285649](https://doi.org/10.1109/NITC.2017.8285649).

Hasan, M. J., A. Nalwan, K.-L. Ong, et al. 2024. “Groundingcardd: Text-Guided Multimodal Phrase Grounding for Car Damage Detection.” IEEE Access 12: 179464-179477. [https://doi.org/10.1109/ACCESS.2024.3506563](https://doi.org/10.1109/ACCESS.2024.3506563).

He, H., and E. A. Garcia. 2009. “Learning From Imbalanced Data.” IEEE Transactions on Knowledge and Data Engineering 21, no. 9: 1263-1284. [https://doi.org/10.1109/TKDE.2008.239](https://doi.org/10.1109/TKDE.2008.239).

He, K., G. Gkioxari, P. Dollár, and R. Girshick. 2017. “Mask r-Cnn. In Proceedings of the Ieee International Conference on Computer Vision (pp. 2961-2969).”

Heidari, A., N. Jafari Navimipour, H. Dag, and M. Unal. 2024. “Deepfake Detection Using Deep Learning Methods: A Systematic and Comprehensive Review.” Wiley Interdisciplinary Reviews: Data Mining and Knowledge Discovery 14, no. 2: e1520.

Huynh, N. T., N. N. Tran, A. T. Huynh, V.-D. Hoang, and H. D. Nguyen. 2023. “Vehide Dataset: New Dataset for Automatic Vehicle Damage Detection in Car Insurance.” 2023 15th International Conference on Knowledge and Systems Engineering (kse) (1-6).

Jalili, A., H. Tabrizchi, and B. Babaali. 2024. “Efficientnet-Based Vehicle Damage Insurance Verification.” 2024 20th Csi International Symposium on Artificial Intelligence and Signal Processing (Aisp), (1-6).

Jameel, M., M. u. I. Arif, A. Hintsches, and L. Schmidt-Thieme. 2021. “Automation of Leasing Vehicle Return Assessment Using Deep Learning Models.” In Machine Learning and Knowledge Discovery in Databases: Applied Data Science Track: European Conference, Ecml Pkdd 2020, Ghent, Belgium, September 14-18, 2020, Proceedings, Part Iv, 259-274. Springer International Publishing.

Jayawardena, S. 2013. “Image Based Automatic Vehicle Damage Detection.”

Jin, H., X. Wang, and Z. Wu. 2023. “An Anchor Free Car Damage Detection Method.” Proceedings of the 2023 9th International Conference on Computing and Data Engineering (66-71).

Kannan, I. R., Y. Balasubramanian, S. P. Subramanian, M. Kandhasamy, and S. Ramesh. 2023. “Cda-net: Computer Vision Based Automatic Car Damage Analysis.” Proceedings of the Fourteenth Indian Conference on Computer Vision, Graphics and Image Processing (pp. 1-7).

Karras, T., S. Laine, and T. Aila. 2019. “A Style-Based Generator Architecture for Generative Adversarial Networks.” Proceedings of
the ieee/cvf Conference on Computer Vision and Pattern Recognition (4401-4410).

Khan, M. H., M. Z. Hussein Sk Heerah, and Z. Basgeeth. 2021. “Automated Detection of Multi-Class Vehicle Exterior Damages Using Deep Learning.” 2021 international Conference on Electrical, Computer, Communications and Mechatronics Engineering (iceccme) (01-06). [https://doi.org/10.1109/ICECCME52200.2021.9590927](https://doi.org/10.1109/ICECCME52200.2021.9590927).

Khare, S. K., V. Blanes-Vidal, B. B. Booth, L. K. Petersen, and E. S. Nadimi. 2024. “A Systematic Review and Research Recommendations on Artificial Intelligence for Automated Cervical Cancer Detection.” Wiley Interdisciplinary Reviews: Data Mining and Knowledge Discovery 14: e1550.

Kumar, D. M., C. N. K. Reddy, G. V. Sai, and P. S. Chowdary. 2023. “Insurance Amount Prediction Based on Accidental Car Damage Level Using Ai.” 2023 8th International Conference on Communication and Electronics Systems (icces) (pp. 1789-1796).

Kyu, P. M., and K. Woraratpanya. 2020. “Car Damage Detection and Classification.” Proceedings of the 11th International Conference on Advances in Information Technolo[gy](https://doi.org/10.1145/3406601.3406651). Association for Computing Machinery. [https://doi.org/10.1145/3406601.3406651](https://doi.org/10.1145/3406601.3406651).

LeCun, Y., Y. Bengio, and G. Hinton. 2015. “Deep Learning.” Nature 521, no. 7553: 436-444.

Li, J., D. Li, S. Savarese, and S. Hoi. 2023. “Blip-2: Bootstrapping Language-Image Pre-Training With Frozen Image Encoders and Large Language Models.” International Conference on Machine Learning (19730-19742).

Li, L., K. Ono, and C.-K. Ngan. 2021. “A Deep Learning and Transfer Learning Approach for Vehicle Damage Detection.” International Flairs Conference Proceedings. 34.

Li, L. H., P. Zhang, H. Zhang, J. Yang, C. Li, and Y. Zhong. 2022. “Grounded Language-Image Pre-Training.” Proceedings of the ieee/cvf Conference on Computer Vision and Pattern Recognition (10965-10975).

Li, Z., F. Liu, W. Yang, S. Peng, and J. Zhou. 2021. “A Survey of Convolutional Neural Networks: Analysis, Applications, and Prospects.” IEEE Transactions on Neural Networks and Learning Systems 33, no. 12: 6999-7019.

Lin, H., Z. Chen, and S. Wu. 2021. “Influencing Factors of Users’ Intention to Purchase in the Online Used Car Market in China: Influencing Factors in the Online Used Car Market.” 2021 5th International Conference on Business and Information Management (9-15). New York, NY, USA: Association for Computing Machinery. [https://doi.org/10.1145/3483794.3483796](https://doi.org/10.1145/3483794.3483796).

Lin, Y.-z., Z.-h. Nie, and H.-w. Ma. 2017. “Structural Damage Detection With Automatic Feature-Extraction Through Deep Learning.” Computer-Aided Civil and Infrastructure Engineering 32, no. 12: 1025-1046.

Liu, H., C. Li, Q. Wu, and Y. J. Lee. 2023. “Visual Instruction Tuning.” Advances in Neural Information Processing Systems 36: 34892-34916.

Liu, S., Z. Zeng, T. Ren, F. Li, H. Zhang, and J. Yang. 2023. “Grounding Dino: Marrying Dino With Grounded Pre-Training for Open-Set Object Detection.” arXiv Preprint arXiv:2303.05499.

Ma, Y., H. Ghanbari, T. Huang, et al. 2023. “A System for Automated Vehicle Damage Localization and Severity Estimation Using Deep Learning.” IEEE Transactions on Intelligent Transportation Systems 25: 5627-5639.

Mahyoub, M., F. Natalia, S. Sudirman, P. Liatsis, and A. H. J. Al-Jumaily. 2023. “Data Augmentation Using Generative Adversarial Networks to Reduce Data Imbalance With Application in Car Damage Detection.” 2023 15th International Conference on Developments in Esystems Engineering (dese) (480-485).

Mallem, S., and A. Nakib. 2023. “Towards Robustness: Enhancing Deep Learning Models Through Meta-Learning and Bilevel Optimization for Accurate Car Damage Classification.” 2023 ieee International Conference on Image Processing (icip) (pp. 107-115).

Mallios, D., L. Xiaofei, N. McLaughlin, J. M. Del Rincon, C. Galbraith, and R. Garland. 2023. “Vehicle Damage Severity Estimation for Insurance Operations Using In-The-Wild Mobile Images.” IEEE Access 11: 78644-78655.

Meng, F., Q. Zhu, and X. Wu. 2023. “Vehicle Appearance Damage Detection Based on Mask r-cnn.” Proceedings of the 2023 5th International Conference on Pattern Recognition and Intelligent Systems (31-35).

Minaee, S., Y. Boykov, F. Porikli, A. Plaza, N. Kehtarnavaz, and D. Terzopoulos. 2021. “Image Segmentation Using Deep Learning: A Survey.” IEEE Transactions on Pattern Analysis and Machine Intelligence 44, no. 7: 3523-3542.

Mishra, S., and D. Kamal. 2024. “Vehicle Damage Identification Using Deep Learning Techniques.” 2024 ieee International Students’ Conference on Electrical, Electronics and Computer Science (sceecs) (1-6).

Moher, D., A. Liberati, J. Tetzlaff, D. G. Altman, and PRISMA Group*. 2009. “Preferred Reporting Items for Systematic Reviews and Meta-Analyses: The Prisma Statement.” Annals of Internal Medicine 151, no. 4: 264-269.

Mukherjee, R., M. Bessa, P. Melo-Pinto, and A. Chalmers. 2021. “Object Detection Under Challenging Lighting Conditions Using High Dynamic Range Imagery.” IEEE Access 9: 77771-77783.

Núñez, J. C. S., J. A. Gómez-Pulido, and R. R. Ramírez. 2024. “Machine Learning Applied to Tourism: A Systematic Review.” Wiley Interdisciplinary Reviews: Data Mining and Knowledge Discovery 14: e1549.

Oubelkas, F., L. Moumoun, and A. Jamali. 2022. “Car Damage Detection Based on Mask Scoring rcnn.” International Conference on Advanced Intelligent Systems for Sustainable Development (368-376).

Panboonyuen, T., N. Nithisopa, P. Pienroj, L. Jirachuphun, C. Watthanasirikrit, and N. Pornwiriyakul. 2023. “Mars: Mask Attention Refinement With Sequential Quadtree Nodes for Car Damage Instance Segmentation.” International Conference on Image Analysis and Processing (pp. 28-38).

Parhizkar, M., and M. Amirfakhrian. 2022a. “Car Detection and Damage Segmentation in the Real Scene Using a Deep Learning Approach.” International Journal of Intelligent Robotics and Applications 6, no. 2: 231-245.

Parhizkar, M., and M. Amirfakhrian. 2022b. “Recognizing the Damaged Surface Parts of Cars in the Real Scene Using a Deep Learning Framework.” Mathematical Problems in Engineering 2022: 5004129.

Patil, A. 2021. “Car Damage Recognition Using the Expectation Maximization Algorithm and Mask r-Cnn.” Information and Communication Technology for Intelligent Systems: Proceedings of Ictis 2020, 2 (pp. 607-616).

Patil, K., M. Kulkarni, A. Sriraman, and S. Karande. 2017. “Deep Learning Based Car Damage Classification.” 2017 16th ieee International Conference on Machine Learning and Applications (icmla) (p. 50-54). [https://doi.org/10.1109/ICMLA.2017.0-179](https://doi.org/10.1109/ICMLA.2017.0-179).

Qaddour, J., and S. A. Siddiqa. 2023. “Automatic Damaged Vehicle Estimator Using Enhanced Deep Learning Algorithm.” Intelligent Systems With Applications 18: 200192.

Qu, Z., and Z. Chen. 2021. “An Intelligent Vehicle Image Segmentation and Quality Assessment Model.” Future Generation Computer Systems 117: 426-432.

Rababaah, A. R. 2022. “Deep Learning Solution for Machine Vision Problem of Vehicle Body Damage Classification.” International Journal of Computational Vision and Robotics 12, no. 4: 426-442.

Rababaah, A. R. 2023. “Investigation of Deep Learning Models for Vehicle Damage Classification.” 2023 10th International Conference on Signal Processing and Integrated Networks (SPIN) (pp. 25-30).

Radford, A., L. Metz, and S. Chintala. 2015. “Unsupervised Representation Learning With Deep Convolutional Generative Adversarial Networks.” arXiv Preprint arXiv:1511.06434.

Ramazhan, M. R. S., A. Bustamam, and R. Anwar. 2023. “Car Body Damage Detection System Using yolov7.” 2023 3rd International Conference on Electronic and Electrical Engineering and Intelligent System (ice3is) (498-502).

Reddy, D. A., S. Shambharkar, K. Jyothsna, V. M. Kumar, C. N. Bhoyar, and R. K. Somkunwar. 2022. “Automatic Vehicle Damage Detection Classification Framework Using Fast and Mask Deep Learning.” 2022 Second International Conference on Computer Science, Engineering and A[pp](https://doi.org/10.1109/ICCSEA54677.2022.9936208)lications (iccsea) (p. 1-6). [https://doi.org/10.1109/ICCSE](https://doi.org/10.1109/ICCSEA54677.2022.9936208) [A54677.2022.9936208](https://doi.org/10.1109/ICCSEA54677.2022.9936208).

Ren, S., K. He, R. Girshick, and J. Sun. 2015. “Faster r-cnn: Towards Real-Time Object Detection With Region Proposal Networks.” In Advances in Neural Information Processing Systems, edited by C. Cortes, N. Lawrence, D. Lee, M. Sugiyama, and R. Garnett, 28. Curran Associates, Inc. [https://proceedings.neurips.cc/paper_files/paper/2015/file/14bfa6bb14875e45bba028a21ed38046-Paper.pdf](https://proceedings.neurips.cc/paper_files/paper/2015/file/14bfa6bb14875e45bba028a21ed38046-Paper.pdf).

Setyawan, H. A., A. Bustamam, and R. Anwar. 2023. “Detection and Assessment of Damaged Objects on the Car Body Based on yolo-v5.” 2023 3rd International Conference on Electronic and Electrical Engineering and Intelligent System (ice3is) (508-513).

Shakhovska, N., A. Turyk, J. Sieck, and A. Sachenko. 2023. “The Novel Neural Network Architecture to Detect Car Damage.” 2023 ieee 12th International Conference on Intelligent Data Acquisition and Advanced Computing Systems: Technology and Applications (idaacs) (1, pp. 508-512).

Sharma, A., A. Verma, and D. Gupta. 2019. “Preventing Car Damage Using Cnn and Computer Vision.” International Journal of Innovative Technology and Exploring Engineering (IJITEE) 9: 1-5.

Shirode, A., T. Rathod, P. Wanjari, and A. Halbe. 2022. “Car Damage Detection and Assessment Using cnn.” 2022 ieee Delhi Section Conference (delcon). (1-5). [https://doi.org/10.1109/DELCON54057.2022.9752971](https://doi.org/10.1109/DELCON54057.2022.9752971).

Taspan, N., B. Madthing, P. Chetprayoon, T. Angsarawanee, K. Pasupa, and T. Sakdejayont. 2023. “Generating Pseudo-Labels for Car Damage Segmentation Using Deep Spectral Method.” International Conference on Neural Information Processing (468-482).

Thomas, J. S., S. Ejaz, Z. Ahmed, and S. Hans. 2023. “Optimized Car Damaged Detection Using cnn and Object Detection Model.” 2023 International Conference on Computational Intelligence and Knowledge Economy (iccike) (pp. 172-174).

Thonglek, K., N. Urailertprasert, P. Pattiyathanee, and C. Chantrapornchai. 2021. “Vehicle Part Damage Analysis Platform for Autoinsurance Application.” ECTI Transactions on Computer and Information Technology (ECTI-CIT) 15, no. 3: 313-323.

Tian, X., and H. Han. 2022. “Deep Convolutional Neural Networks With Transfer Learning for Automobile Damage Image Classification.” Journal of Database Management 33, no. 3: 1-16.

Ünal, Y., Ş. Öztürk, M. N. Dudak, and M. Ekici. 2022. “Comparison of Current Convolutional Neural Network Architectures for Classification of Damaged and Undamaged Cars.” Advances in Deep Learning, Artificial Intelligence and Robotics: Proceedings of the 2nd International Conference on Deep Learning, Artificial Intelligence and Robotics,(icdlair) 2020 (pp. 141-149).
van Ruitenbeek, R., and S. Bhulai. 2022. “Convolutional Neural Networks for Vehicle Damage Detection.” Machine Learning With A[pp](https://www.sciencedirect.com/science/article/pii/S2666827022000433)lications 9: 100332. [https://www.sciencedirect.com/science/article/pii/S2666827022000433](https://www.sciencedirect.com/science/article/pii/S2666827022000433). [https://doi.org/10.1016/j.mlwa.2022.100332](https://doi.org/10.1016/j.mlwa.2022.100332).

Venkatesh, M., R. Oruganti, S. A. Katti, K. Subramanian, and T. Chandar. 2023. “Vehicle Damage Detection Using Machine Learning and Segmentation to Aid Insurance Claims.” 2023 Ieee 20th India Council International Conference (Indicon) (932-938).

Wang, X., W. Li, and Z. Wu. 2023. “Cardd: A New Dataset for Vision-Based Car Damage Detection.” IEEE Transactions on Intelligent Transportation Systems 24: 7202-7214.

Waqas, U., N. Akram, S. Kim, D. Lee, and J. Jeon. 2020. “Vehicle Damage Classification and Fraudulent Image Detection Including Moire Effect Using Deep Learning.” 2020 ieee canadian conference on electrical and computer engineering (ccece). (1-5). [https://doi.org/10.1109/CCECE47787.2020.9255806](https://doi.org/10.1109/CCECE47787.2020.9255806).

Wei, H., L. Feng, X. Chen, and B. An. 2020. “Combating Noisy Labels by Agreement: A Joint Training Method With Co-Regularization.” Proceedings of the ieee/cvf Conference on Computer Vision and Pattern Recognition (13726-13735).

Wei, J., J. He, Y. Zhou, K. Chen, Z. Tang, and Z. Xiong. 2019. “Enhanced Object Detection With Deep Convolutional Neural Networks for Advanced Driving Assistance.” IEEE Transactions on Intelligent Transportation Systems 21, no. 4: 1572-1583.

Xiong, Y., B. Varadarajan, L. Wu, et al. 2024. “Efficientsam: Leveraged Masked Image Pretraining for Efficient Segment Anything.” 2024 ieee/cvf Conference on Computer Vision and Pattern Recognition (cvpr) (p. 16111-16121). [https://doi.org/10.1109/CVPR52733.2024.01525](https://doi.org/10.1109/CVPR52733.2024.01525).

Yun, S., D. Han, S. J. Oh, S. Chun, J. Choe, and Y. Yoo. 2019. “Cutmix: Regularization Strategy to Train Strong Classifiers With Localizable Features.” Proceedings of the ieee/cvf International Conference on Computer Vision (6023-6032).

Zang, Y., W. Li, K. Zhou, C. Huang, and C. C. Loy. 2022. “Open-Vocabulary Detr With Conditional Matching.” European Conference on Computer Vision (106-122).

Zhang, B., Z. Tian, Q. Tang, et al. 2022. “Segvit: Semantic Segmentation With Plain Vision Transformers. NeurIPS.”

Zhang, H., F. Li, S. Liu, et al. 2022. “Dino: Detr With Improved Denoising Anchor Boxes for End-To-End Object Detection.” arXiv Preprint arXiv:2203.03605.

Zhang, K., H. Li, Z. Wang, and X. Zhao. 2020. “Feature Recognition and Detection for Road Damage Based on Intelligent Inspection Terminal.” Smart Structures and Nde for Industry 4.0, Smart Cities, and Energy Systems (11382, 117-129).

Zhang, Q., X. Chang, and S. B. Bian. 2020. “Vehicle-Damage-Detection Segmentation Algorithm Based on Improved Mask Rcnn.” IEEE Access 8: 6997-7004. [https://doi.org/10.1109/ACCESS.2020.2964055](https://doi.org/10.1109/ACCESS.2020.2964055).

Zhu, D., J. Chen, X. Shen, X. Li, and M. Elhoseiny. 2023. “Minigpt-4: Enhancing Vision-Language Understanding With Advanced Large Language Models.” arXiv Preprint arXiv:2304.10592.

Zhu, Q., W. Hu, Y. Liu, and Z. Zhao. 2021. “Research on Vehicle Appearance Damage Recognition Based on Deep Learning.” Journal of Physics: Conference Series 1880: 012024.

Zhu, Q., Y. Liu, Y. Shen, and Z. Zhao. 2021. “Research on Intelligent Damage Assessment System for Time-Sharing Rental Vehicles Based on Image Recognition.” Journal of Physics: Conference Series 1880, no. 1: 012012. [https://doi.org/10.1088/1742-6596/1880/1/012012](https://doi.org/10.1088/1742-6596/1880/1/012012).

Zhu, X., S. Liu, P. Zhang, and Y. Duan. 2019. “A Unified Framework of Intelligent Vehicle Damage Assessment Based on Computer Vision Technology.” 2019 ieee 2nd International Conference on Automation, Electronics and Electrical Engineering (auteee) (p. 124-128). [https://doi.org/10.1109/AUTEEE48671.2019.9033150](https://doi.org/10.1109/AUTEEE48671.2019.9033150).

## Appendix A

Overview of All Datasets From 55 Selected Papers

Table A1 Summarizes the key details of the datasets, annotations, and characteristics referenced in this study. This information provides additional context to support the findings and methodologies discussed in the main text.

TABLE A1 | Summary of vehicle damage datasets.
| References | Source | Volume | Vehicle diversity | Damage types | Annotation quality |
| :— | :— | :— | :— | :— | :— |
| Patil et al. (2017) | Author collected from web | NA | Various car damages. | Bumper dent, door dent, glass shatter, headlamp broken, tail lamp broken, scratch, smash, no damage. | Manually annotated. |
| Harshani and Vidanage (2017) | User-uploaded images. | NA | Focus on vehicle body damages. | Minor damages (scratches, scrapes, dings). | NA |
| Zhu et al. (2019) | Author collected | 660,000 | Includes vehicle prototypes and damaged vehicle images | Scrape, scratch, deformation, cracking, damaged, serious damage. | Annotated with polygons for parts and rectangular frames for damaged areas. |
| Dhieb et al. (2019) | Author collected from internet and local sources. | NA | Damaged and nondamaged vehicles, categorized by damage severity and location. | Minor (scratch), moderate (large dents), major (extensive damage). | Manually annotated. |
| Sharma et al. (2019) | Author collected from web | 3583 | Diverse car damages, includes damage location (front, side, rear). | Minor, moderate, severe. | Manually annotated. |
| Barari et al. (2020) | Collected from internal sources | 15,000 | Various vehicle models with damage from different angles and perspectives. | Scratch, dent, tear, crush, misalignment, missing parts. | Labeled by domain experts with semantic segmentation and bounding boxes. |
| Artan and Kaya (2020) | Collected from an insurance company and online searches | 1096 | Includes images of damage on bumpers, hoods, and fenders. | No damage, minor damage (scratches, scrapes, dings), severe damage (extensive). | Manually tagged bounding boxes and class labels for damage detection and severity classification. |
| Zhang, Chang, et al. (2020) | Author collected from online downloads and daily photographs. | 2000 | Various angles and sizes in different scenes. | Scratches | Labeled using LabelMe tool. |
| Waqas et al. (2020) | Author collected from online sources and real-time photographs | 600 | Variety of vehicle models and angles | Medium damage, huge damage, no damage. | Manually annotated. |
| Kyu and Woraratpanya (2020) | Author collected from the web using selenium | 1150 | Various car models and damage types. | Minor, moderate, severe. | Labeled with damage location and severity. |
| Patil (2021) | Websites and local photographs. | NA | Multiple angles and seasons. | Bumper dent, door dent, glass break, headlamp damage, tail lamp damage, scratches, smash. | Annotated for segmentation. |
| Chua et al. (2021) | Author collected from a local automotive dealer and Google images. | 782 | Includes front bumper, rear bumper, and car wheels. | Damaged and undamaged parts (front bumper, rear bumper, car wheels). | Labeled for damage presence and part classification. |
| Sruthy et al. (2021) | Google images | NA | Multiple damage types and car parts. | Bumper dent, glass break, scratch, door dent, front damage, headlight damage, tail light damage, fully smashed. | Labeled with bounding boxes |
| Chen et al. (2021) | CompCars, Stanford Cars | 152,911 | Multiple car models and types. | NA | Labeled for vehicle type and model classification. |

(Continues)

TABLE A1 | (Continued)
| References | Source | Volume | Vehicle diversity | Damage types | Annotation quality |
| :— | :— | :— | :— | :— | :— |
| Jameel et al. (2021) | Vehicle leasing company in Europe. | 342,029 | Covers multiple models, colors, and parts. | 4 optical types (scratch, dent, stone-chip, etc.). | Bounding boxes and class labels after cleaning and pre-processing. |
| Bandi et al. (2021) | Stanford car image dataset | 2702 | Various damage locations and severities. | Whole car, front damage, rear damage, side damage, minor, moderate, severe. | Hand-labeled for classification of damage presence, location, and severity. |
| Khan et al. (2021) | Author-constructed using images from multiple sources and additional captures. | 51,770 | Various views of damaged vehicle exteriors. | Dent, scratch, broken, no damage. | Labeled for multi-class damage detection. |
| Thonglek et al. (2021) | Author collected using LINE integration for realtime images. | 1624 | Focus on Toyota Camry model. | Low, medium, high, replacement level damage | Labeled with damage severity levels based on insurance standards. |
| Zhu, Hu, et al. (2021) | Historical insurance claims data | NA | Includes panoramic and close-up vehicle images. | Scrape, deformation, cracking, rupture. | Labeled with component instance segmentation |
| Balcı and Artan (2021) | Internet-collected vehicle images and surveillance systems. | 2300 | Focus on frontal views with annotated windshield, headlights, and damage status. | Binary classification (damaged/ nondamaged). | Includes bounding boxes for key vehicle regions; damaged areas manually verified. |
| Dorathi Jayaseeli et al. (2021) | Internet-collected images. | 55 | Limited to scratches on cars. | Single class (scratch). | Manual with precise masks exported in JSON format. |
| Feng et al. (2021) | Collected from internet images. | NA | Various vehicles used as targets in damage assessment. | No damage, slight damage, general damage, serious damage, complete damage. | Labeled with a 0-1 scale for quantitative damage severity assessment. |
| Li, Ono, et al. (2021) | Web scraping from Google Images and other public sites. | 864 | Includes various vehicles (e.g., sedan, SUV, minivan). | Bumper damage, glass damage, frame damage. | Manually labeled with damage types; polygon boundaries created using VGG Image Annotator. |
| Dwivedi, Malik, et al. (2021) | Online images from Google and Bing. | 2249 | Multiple car types with diverse damage categories. | Seven categories (bumper dent, scratch, door dent, glass shatter, headlamp broken, tail lamp broken, smashed) and “no damage.” | Manual annotation with bounding boxes for damage detection tasks. |
| Zhu, Liu, et al. (2021) | Photos collected from insurance companies and rental vehicle records. | NA | Images from various time-sharing rental vehicles. | Scraping, deformation, rupture. | Pixel-level annotation with instance segmentation for damage type and location. |
| Parhizkar and Amirfakhrian (2022a) | Collected by authors from real-world vehicle accident scenes. | 2000 | Various car models with damage on different parts. | Bumper indent, door dent, glass shatter, headlamp and tail lamp damage, scratch. | Pixel-level annotation with instance segmentation for damage type and location. |
| Ünal et al. (2022) | Public damaged car dataset (DCD-2). | 160 | Limited to accident and nonaccident vehicles. | Damaged versus undamaged. | No specific annotation details. |
| Reddy et al. (2022) | Kaggle | 1100 | Various types of vehicle damages. | Bumper dent, door dent, glass break, headlight broken, tail light broken, scratch, smash, no damage. | Manually labeled with bounding boxes and class labels for damage types. |
| Shirode et al. (2022) | Collected from Google Images | 1000 | Various car models and damage locations. | Scratch, dent, shatter, dislocation. | Annotated with bounding polygons and JSON labels for damage types. |

(Continues)

TABLE A1 | (Continued)
| References | Source | Volume | Vehicle diversity | Damage types | Annotation quality |
| :— | :— | :— | :— | :— | :— |
| Tian and Han (2022) | Web scraping from Google and public sites. | 4543 | Various vehicle models with common damage types. | Bumper dent, bodywork dent, flat tire, hail-induced damage, scratches, undamaged. | Grouped by damage types with image augmentation applied for dataset balance. |
| Rababaah (2022) | Collected from Google Images and public datasets. | 4180 | Includes various car models and common damage locations. | Bumper dent, bumper scratch, door dent, door scratch, glass shatter, headlamp damage, tail lamp damage. | Hand-labeled with categories for damage location and type. |
| Oubelkas et al. (2022) | Collected from Google and daily photographs. | 528 | Includes multiple damage types (headlamp, hood, rear bumper, front bumper, door) captured from various angles. | Five classes (headlamp, hood, rear bumper, front bumper, door). | Precise manual annotations with masks generated using LabelMe, exported in COCO JSON format. |
| Ma et al. (2023) | Collected from OE insured fleet and OEM mobile application. | 7449 | Includes sedans, SUVs, trucks. | Body damage, surface damage, deformity. | Crowd-sourced pixellevel annotations for vehicle part and damage segmentation. |
| Jin et al. (2023) | CarDD Public dataset | 4000 | Includes various damage types on different vehicle models. | Dent, crack, scratch, glass shatter, broken lamp, flat tire. | Labeled with bounding boxes for damage localization. |
| Qaddour and Siddiqa (2023) | Collected from Google Images and public datasets. | NA | Includes various vehicle types and damage locations. | Minor, moderate, severe. | Labeled with Mask R-CNN for damage localization and severity classification. |
| Ramazhan et al. (2023) | Kaggle and manually sorted images from public websites. | 767 | Various vehicle damage locations and types. | Scratch, dent, shattered glass, broken lamp, panel tear. | Annotated with bounding boxes using the Roboflow platform. |
| Wang et al. (2023) | Public CarDD (Flickr and Shutterstock) | 4000 | Covers diverse damage types, vehicle colors, and shooting angles. | Dent, scratch, crack, glass shatter, tire flat, lamp broken. | Fine-grained annotations with instance-level segmentation and bounding boxes. |
| Kannan et al. (2023) | Collected from insurance offices, garages, online websites, and sales platforms. | 11,380 | Covers hatchback, sedan, and SUV types from multiple makes and models. | Dent, scratch, bent, broken, cracks, smashed, punched, pushed. | Labeled for part, damage location, and severity using enhanced manual annotations. |
| Mahyoub et al. (2023) | Kaggle and web scraping | 182 | Cars with damage at different scales and perspectives. | Damage by location (bumper, headlamp, door, hood, etc.) and severity (low, medium, high). | Annotated in COCO format for damage location and severity classification. |
| Setyawan et al. (2023) | Kaggle datasets and images collected from vehicle repair shops. | 767 | Various car models with damages at different locations. | Scratch, dent, dislocation, broken lights, shattered glass. | Manually annotated with bounding boxes for object detection. |
| Taspan et al. (2023) | Public CarDD dataset | 4000 | Includes various damage types, with annotations for type, location, and magnitude. | Dent, scratch, crack, glass shatter, tire flat, lamp broken. | High-resolution images with detailed ground truth annotations for classification, detection, and segmentation. |
| Kumar et al. (2023) | Collected from insurance companies and public records. | NA | NA | Minor, moderate, severe. | Damage levels annotated numerically and categorically for machine learning. |

(Continues)

TABLE A1 | (Continued)
| References | Source | Volume | Vehicle diversity | Damage types | Annotation quality |
| :— | :— | :— | :— | :— | :— |
| Rababaah (2023) | Collected from Google Images and online forums | 2500 | Various car models and angles | Scratch, dent, broken glass, crushed body panels. | Bounding boxes and class labels for damage detection and classification. |
| Panboonyuen et al. (2023) | Thai car damage dataset, provided by Thaivivat Insurance PCL. | 1,154,045 labeled instances | Includes a variety of real-world damaged Thai vehicles. | Cracked paint, dents, loose parts, scrapes. | Annotated with high- detail instance masks and segmentation polygons using advanced tools for insurance-grade assessments. |
| Thomas et al. (2023) | Kaggle dataset. | 3000 | Images cover various vehicles with multiple damage types. | Scratch, dent, glass shatter, smash. | Manually annotated bounding boxes for object detection and classification. |
| Fumin (2023) | Images collected from real-world automotive use- cases and public datasets. | NA | Includes various types of surface damage on different car models. | Scratch, dent, paint damage, glass damage, plastic deformation. | Bounding boxes annotated for surface damage types. |
| Shakhovska et al. (2023) | Combined from Kaggle datasets and manually annotated images. | 600 | Includes various damage types and car sides. | Small, medium, large damage (e.g., scratches, dents). | Annotated with VGG Image Annotator for damage masks and bounding boxes. |
| Mallem and Nakib (2023) | Provided by Tchek. ai, a car inspection company. | 105,000 | Includes a variety of car damage types from real-world inspections. | 12 damage categories | Partially noisy; 20% estimated label noise, with a small clean subset used for correction. |
| Meng et al. (2023) | Collected from real-world accident cases via insurance companies and daily vehicle use scenarios. | 5173 | Includes vehicles under various lighting conditions and damage severities. | Scrape, scratch, deformation, cracking, fold, fracture, dislocation, missing. | Annotated with bounding boxes and pixel-level segmentation masks for damage localization. |
| Venkatesh et al. (2023) | Online repositories, social media, and personal collections. | 34,584 | Includes multiple damage scenarios across various vehicle types. | Dent, scratch, flat tire, broken glass, broken light, crack. | Annotated with bounding boxes and segmentation masks for various models. |
| Mallios et al. (2023) | Historical insurance claims data with images captured in real-world scenarios. | 230,000 | Includes multiple vehicle classes such as cars, trucks, and buses. | Dent, broken light, broken window, missing parts, severe damage. | High-quality segmentation masks and bounding boxes for car parts and damage regions. |
| Huynh et al. (2023) | Public (Flickr and Shutterstock) | 13,945 | Includes variations in lighting, angles, and car damage scenarios. | Dent, scratch, broken glass, lost parts, punctured, torn, broken lights. | High-resolution annotations with category and instance segmentation following industry guidelines. |
| Jalili et al. (2024) | Provided during a hackathon by Ripik. ai and Analytics Vidhya. | NA | Includes various damage types and scenarios from insurance claim cases. | Crack, scratch, tire flat, dent, glass shatter, lamp broken. | Verified against corresponding claim records for accuracy. |
| Amodu et al. (2024) | Public (Kaggle dataset by Prajwal Bhamere). | 1631 | Includes sedans, SUVs, trucks, and motorcycles with damage captured in various settings and lighting conditions. | Minor, moderate, severe damage (e.g., scratches, dents, cracks). | Manually labeled with bounding boxes for damage areas and severity classification. |
| Mishra and Kamal (2024) | Collected from online images and insurance records. | NA | Includes various vehicle models and damage scenarios. | Scratches, dents, broken components. | Bounding boxes annotated for YOLOv8 model training. |

---

1. Abbreviations: AI, artificial intelligence; CNN, convolutional neural network; CTL, CNN-based transfer learning; DL, deep learning; FRCNN, faster-RCNN; GAN, generative adversarial networks; LBP, local binary pattern; MARS, mask attention refinement with sequential quadtree nodes; ML, machine learning; MRCNN, mask-RCNN; R-CNN, region-based convolutional neural networks; S-CNN, shallow convolutional neural networks; SIFT, scale-invariant feature transform; SLR, systematic literature review; SSD, single shot multibox detector; SVM, support vector machine; TCLF, traditional classifier; YOLO, You Only Look Once.
    
    This is an open access article under the terms of the [Creative Commons Attribution](http://creativecommons.org/licenses/by/4.0/) License, which permits use, distribution and reproduction in any medium, provided the original work is properly cited.
    © 2025 The Author(s). WIREs Data Mining and Knowledge Discovery published by Wiley Periodicals LLC.[↩︎](about:blank#fnref1)