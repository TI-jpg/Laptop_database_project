
#  Laptop Database Analysis
This analysis provided a detailed examination of over 1,200 laptop configurations across 19 companies, aiming to uncover how hardware specifications and brand strategies influence pricing and market presence. With a combined total price exceeding $76 million, the dataset offered a substantial basis for understanding broader trends in the laptop market.
The findings reveal a clear divide between high-volume, mid-market brands and low-volume, premium-focused ones. Dell, Lenovo, and HP emerged as the top contributors in both configuration count and total revenue. Their broad product ranges suggest a strategy of covering multiple price tiers, offering flexibility for a wide spectrum of consumers. In contrast, brands like Apple and Razer, despite offering fewer models, show significantly higher average prices—an indication of a deliberate focus on high-end segments where performance, design, and brand equity justify elevated pricing.



![image alt](https://github.com/TI-jpg/Laptop_database_project/blob/main/Dashboard.jpg?raw=true)








Hardware components played a defining role in price differentiation. Laptops featuring dedicated GPUs commanded a substantial premium over those with integrated graphics, consistent with their positioning in gaming, creative, and performance-intensive use cases. Similarly, RAM capacity had a strong positive correlation with pricing. Systems configured with 32GB or 64GB of RAM were priced well above the average, while those with 4GB or 8GB were more prevalent among entry-level offerings. These patterns highlight how technical specifications directly inform product positioning and pricing power.
#  Used Functions
The SQL layer behind this analysis was thoughtfully constructed using CTEs to manage logical complexity in a modular way. Key transformations involved grouping and aggregation functions to surface company-level and spec-level metrics, along with CASE logic to classify GPUs and standardize hardware categories. By avoiding joins and working with a single structured dataset, the queries maintained efficiency while ensuring data clarity. This approach made it straightforward to feed clean, meaningful summaries into Power BI, where the resulting dashboards offered strong visual narratives of the underlying trends.
# Conclusion
Overall, the analysis illustrates how brand strategy, hardware choices, and market segmentation interact to shape pricing outcomes in the laptop market. It also demonstrates how thoughtful data preparation and focused SQL logic can drive clear, business-relevant insights from raw configuration data.
