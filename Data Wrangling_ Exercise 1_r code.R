# Import data into R
library(readr)
library(dplyr)
library(tidyr)

refine_original <- read_csv("C:/Users/twalter/Box Sync/twalter/2017 Projects/Foundations of Data Science/Data Wrangling/refine_original.csv")

ro_df <- refine_original 

# Clean up the data to be all lowercase for philips, akzo, van houten and unilever

ro_df$company <- tolower(ro_df$company)

ro_df$company <- ifelse(ro_df$company %in% c("phillips", "philips", "phllips", "phillps", "fillips", "phlips"), "philips", ro_df$company)
ro_df$company <- ifelse(ro_df$company %in% c("akz0", "ak zo"), "azko", ro_df$company)
ro_df$company <- ifelse(ro_df$company %in% c("van houten"), "van houten", ro_df$company)
ro_df$company <- ifelse(ro_df$company %in% c("unilver", "unilever"), "unilever", ro_df$company)

# Separate the product

ro_df <- ro_df %>% separate (`Product code / number`, c("Product_Code", "Product_Number"), "-", extra = "merge")

#Add product category
 
ro_df <- ro_df$Product_Category[ro_df$Product_Code == "p"] <- "Smartphone"
ro_df <- ro_df$Product_Category[ro_df$Product_Code == "v"] <- "TV"
ro_df <- ro_df$Product_Category[ro_df$Product_Code == "x"] <- "Laptop"
ro_df <- ro_df$Product_Category[ro_df$Product_Code == "q"] <- "Tablet"

## Add full address for geocoding

ro_df$Full_address = paste(ro_df$address, ro_df$city, ro_df$country, sep = ", ")

#Add dummy variables for company #Next for product categories


# output csv called Refined_clean

write.csv(refine_original, "refine_original_clean.csv")
