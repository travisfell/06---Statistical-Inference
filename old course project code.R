# course project code

```{r}
OJ0.5len <- subset(ToothGrowth, supp == "OJ" & dose == "0.5", select = "len")
OJ1.0len <- subset(ToothGrowth, supp == "OJ" & dose == "1", select = "len")
OJ2.0len <- subset(ToothGrowth, supp == "OJ" & dose == "2", select = "len")
VC0.5len <- subset(ToothGrowth, supp == "VC" & dose == "0.5", select = "len")
VC1.0len <- subset(ToothGrowth, supp == "VC" & dose == "1", select = "len")
VC2.0len <- subset(ToothGrowth, supp == "VC" & dose == "2", select = "len")

sd(OJ0.5len$len)
sd(OJ1.0len$len)
sd(OJ2.0len$len)

t.test(OJ2.0len$len - OJ0.5len$len)
```