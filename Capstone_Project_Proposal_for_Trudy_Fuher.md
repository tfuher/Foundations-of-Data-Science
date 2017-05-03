# Non-Profit Segmentation and Ranking Analysis  

Foundations of Data Science  
Capstone Project Proposal  
By: Trudy Fuher  
================

# Business Problem and Target Audience  

----------------



Donors have a hundreds of choices when it comes to supporting non-profits. How do we really know if the charity we are supporting is the best one and if it does what it claims to? Through our research conducted internally at Educational Media Foundation, we know many donors spend hours researching non-profits by doing Google searches, reading online reviews and talking to friends before they will make a donation. 

Charity Navigator is a trusted and creditable organization for evaluating specific charities and Charity Watch provides a ranking of charities. However, neither of these organizations provide a way to compare and contrast charities on a variety of variables.  Just because a non-profit has a score of 90-100 or an A/A+, does that necessarily mean the majority of your donation is going to programs vs. administrative costs? How do you compare and contrast the impact of an organization? Do they serve 20k in a very specific community or thousands world-wide? Does a better rating by trusted associations equate to more donations for that non-profit? 

There are two audiences that the results of this analysis will benefit.

1. **Individual Consumers:** Consumers who would are thinking about making a charitable contribution could use this data as another way to easily compare and contrast organizations against each other using specific variables. This data could also be incorporated into an easy to use app or website making it user friendly. In addition to overall comparisons, users could drill into a specific organization. While many charities post the 990 form on their site, it is usually buried and donors have to understand how to read the financial data. This could cause friction for a donor who is considering making a large donation and it doesn't incorporate full transparency or interpretation from the organization. 

2. **Educational Media Foundation:** As a non-profit media ministry, our senior management often get financial questions from donors about things like Executive Management salaries, how and where donor dollars are used, and how our non-profit compares to other organizations. This data and dashboard would also provide our senior leaders the ability to provide updated ratios and benchmarks to donors. Additionally, our Board of Directors and Senior Management could use it to establish financial baselines or benchmarks based on industry standards. 


# Supporting Documents

--------------

The attached supporting documents show examples of what Charity Navigator or Charity Watch show on their sites. Additionally, new articles highlight consumers desire to understand which non-profits are being most effective and efficient with donor dollars. 

1. **Charity Watch** (https://www.charitywatch.org/top-rated-charities)  

2. **Charity Navigator** (https://www.charitynavigator.org/)  

3. **Consumer Reports** http://www.consumerreports.org/charities/best-charities-for-your-donations/)  

4. **Charity Navigator article** (https://www.charitynavigator.org/index.cfm?bay=content.view&cpid=4756)  

5. **Council of Nonprofits** https://www.councilofnonprofits.org/tools-resources/financial-transparency)  

6. **Donors Care More About How Money is Spent** (https://www.philanthropy.com/article/Donors-Care-More-About-How/152341)  

7. **Form 990 example** (https://www.irs.gov/pub/irs-pdf/f990.pdf)  

# Data Resources

---------------

Data from 2011-2016 is publicly available through Amazon Web Services.  

1. **990 Data Set** (https://aws.amazon.com/public-data-sets/irs-990/)

The index files for this data set is in .json and the data file itself is in XML. I will need to combine both the json and XML files together to get the full data for each 990 form. The 2016 data file contains 378,420 records. I plan to use at least 2015-2016 data. 

The data file contains numeric, date, geographical and text values. Some of the important data fields that can be used for analysis are: EIN, address, expenses, revenue, salaries, number of employees, number of volunteers, mission of the organization, and survey questions.  In an effort to familiarize myself with the terminology and importance data points from the 990, I will also discuss this with our CFO and VP of Finance to determine what variables would be important to them for analysis. 

Additionally, this data set could be compiled with the ranking data of Charity Navigator or Charity Watch to see if their rankings show any correlation to to how much donations are received to an organization. It could also be added to online review data about an organization. This is currently Outside of the scope of this project for this class. 

# Solution & Final Output

---------------

I would like to run some general statistics on the data set to establish some benchmarks in specific categories such as . . Mean/Median salaries for CEO by organization size and revenue. 
. CEO salary to Income ratio
. % of donations that go to actual program and a time series of if that is declining or increasing

The final output of this analysis would be an interactive dashboard for the donors that they could pick their organization and do a quick analysis on. There would be a separate dashboard for Educational Media Foundation showing how it ranks among other organizations similar to us. 

