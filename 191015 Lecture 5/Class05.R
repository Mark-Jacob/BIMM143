#' ---
#' title: "Class 05: Data exploration and visualization in R"
#' author: "Mark Jacob"
#' date: "October 31st, 2019"
#' output: github_document
#' ---



#Class5 Data Visualization
x <- rnorm(1000)
#Looking for help
#EZ commands to use in the future
mean(x)
sd(x)
#Numbers will differ among people due to different parameters for each system as rnorm indicates
#random numbers for each person
summary(x)
#Making the actual boxplot
boxplot(x)
#o shiiiiiiii here comes a histogram
hist(x)
#If we want to keep these graphs, we can export them to word or whateva
#rug(x) indicates the actual data points under the graph in order to represent where the data is lying
rug(x)
#Data visualization A practical introduction Kieran Healy - prolly should read
#Most important point: Make it understandable and visualizaed easily
#welp that didn't work
baby <- read.table("bimm143_05_rstats/weight_chart.txt",
                   header=TRUE)
#if you have headers, make sure to set it to true otherwise it will default 
read.table("bimm143_05_rstats/weight_chart.txt", header=FALSE)
#Issa time to make plots boiyo
plot(baby$Age, baby$Weight, type="o",
     lwd="1",
     pch="2",
     cex=5,
     ylim=c(2,10),
     xlab="Age",
     ylab="Weight(kg)", 
     main="Age v. Weight",
     col="indianred2")
#Type l is a line graph, Type p is is just a dot graph, Type b is a dash and dot graph, and o is linegraph with scatterplot
#lwd parameter is a modifer for line / dot thickness in the graph. The larger the value, the more dark and thick it gets.
#pch gives you an option of changing the characters of the data points into numbers.It only takes the first character though if you give it an alphabet
#pch will give you a designated list of characters to use like squares or triangles if you know the character code
#you can also use emojis for bullet points
#ylim/xlim can change the axis limits manually
#xlab/ylab can change the x axis label
feat <- read.table("bimm143_05_rstats/feature_counts.txt", header=TRUE,
           sep="\t")
#the sep= parameter indicates what kind of separation is occuring in read.table
mouse <- read.delim("bimm143_05_rstats/feature_counts.txt", header=TRUE)
#read.delim is a special text reader for tab spaced files, woo
#par() controls area
#mar=() controls margins
par(mar=c(5,15,5,5))
barplot(mouse$Count,
        horiz=TRUE,
        names.arg =mouse$Feature,las=1)
#You must run par with the barplot for par to take place
#SECTION 3 JEEZUS CHRIST
par(mar=c(4,5,5,5))
obama <- read.delim("bimm143_05_rstats/male_female_counts.txt")
#Rainbow obama plot
barplot(obama$Count,
        names.arg =obama$Sample,
        las=2,
        ylab="Counts",
        col=rainbow(nrow(obama)))
#red and blue obama plot
barplot(obama$Count,
        names.arg =obama$Sample,
        las=2,
        ylab="Counts",
        col=c("red","blue"),
        xlab="Samples")